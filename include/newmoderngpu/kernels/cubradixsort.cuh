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
#include <newmoderngpu/device/deviceutil.cuh>
#include "cub/cub.cuh"

namespace mgpu {

template<typename Key>
bool CubRadixSort(Key* keys_global, Key* keys2_global, int count, int beginBit,
	int endBit, CudaContext& context) {

	cub::DoubleBuffer<Key> keys(keys_global, keys2_global);

	size_t tempBytes = 0;
	cub::DeviceRadixSort::SortKeys(0, tempBytes, keys, count, beginBit, endBit,
		context.Stream());

	MGPU_MEM(byte) tempDevice = context.Malloc<byte>(tempBytes);

	cub::DeviceRadixSort::SortKeys(tempDevice->get(), tempBytes, keys, count,
		beginBit, endBit, context.Stream());
	MGPU_SYNC_CHECK("cub::DeviceRadixSort::SortKeys");

	return 1 == keys.selector;
}

template<typename Key, typename Value>
bool CubRadixSort(Key* keys_global, Key* keys2_global, Value* values_global,
	Value* values2_global, int count, int beginBit, int endBit,
	CudaContext& context) {

	cub::DoubleBuffer<Key> keys(keys_global, keys2_global);
	cub::DoubleBuffer<Value> values(values_global, values2_global);

	size_t tempBytes = 0;
	cub::DeviceRadixSort::SortPairs(0, tempBytes, keys, values, count,
		beginBit, endBit, context.Stream());

	MGPU_MEM(byte) tempDevice = context.Malloc<byte>(tempBytes);

	cub::DeviceRadixSort::SortPairs(tempDevice->get(), tempBytes, keys, values, 
		count, beginBit, endBit, context.Stream());
	MGPU_SYNC_CHECK("cub::DeviceRadixSort::SortPairs");

	return 1 == keys.selector;
}

} // namespace mgpu
