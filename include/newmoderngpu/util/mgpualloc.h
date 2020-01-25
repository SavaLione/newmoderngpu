/*
 * Copyright (c) 2020 Savely Pototsky (SavaLione)
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the University nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 */
#pragma once

#include <newmoderngpu/util/util.h>
#include <cuda.h>

namespace mgpu {

class CudaDevice;

class CudaContext;
typedef intrusive_ptr<CudaContext> ContextPtr;

////////////////////////////////////////////////////////////////////////////////
// Customizable allocator.

// CudaAlloc is the interface class all allocator accesses. Users may derive
// this, implement custom allocators, and set it to the device with 
// CudaDevice::SetAllocator.

class CudaAlloc : public CudaBase {
public:
	virtual cudaError_t Malloc(size_t size, void** p) = 0;
	virtual bool Free(void* p) = 0;
	virtual void Clear() = 0;

	virtual ~CudaAlloc() { }
	
	CudaDevice& Device() { return _device; }
	
protected:
	CudaAlloc(CudaDevice& device) : _device(device) { }
	CudaDevice& _device;
};

// A concrete class allocator that simply calls cudaMalloc and cudaFree.
class CudaAllocSimple : public CudaAlloc {
public:
	CudaAllocSimple(CudaDevice& device) : CudaAlloc(device) { }

	virtual cudaError_t Malloc(size_t size, void** p);
	virtual bool Free(void* p);
	virtual void Clear() { }
	virtual ~CudaAllocSimple() { }
};

// A concrete class allocator that uses exponentially-spaced buckets and an LRU
// to reuse allocations. This is the default allocator. It is shared between
// all contexts on the device.
class CudaAllocBuckets : public CudaAlloc {
public:
	CudaAllocBuckets(CudaDevice& device);
	virtual ~CudaAllocBuckets();

	virtual cudaError_t Malloc(size_t size, void** p);
	virtual bool Free(void* p);
	virtual void Clear();

	size_t Allocated() const { return _allocated; }
	size_t Committed() const { return _committed; }
	size_t Capacity() const { return _capacity; }

	bool SanityCheck() const;

	void SetCapacity(size_t capacity, size_t maxObjectSize) {
		_capacity = capacity;
		_maxObjectSize = maxObjectSize;
		Clear();
	}

private:
	static const int NumBuckets = 84;
	static const size_t BucketSizes[NumBuckets];

	struct MemNode;
	typedef std::list<MemNode> MemList;
	typedef std::map<void*, MemList::iterator> AddressMap;
	typedef std::multimap<int, MemList::iterator> PriorityMap;

	struct MemNode {
		AddressMap::iterator address;
		PriorityMap::iterator priority;
		int bucket;
	};

	void Compact(size_t extra);
	void FreeNode(MemList::iterator memIt);
	int LocateBucket(size_t size) const;

	AddressMap _addressMap;
	PriorityMap _priorityMap;
	MemList _memLists[NumBuckets + 1];

	size_t _maxObjectSize, _capacity, _allocated, _committed;
	int _counter;
};

} // namespace mgpu
