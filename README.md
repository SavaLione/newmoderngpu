Design patterns for GPU computing

Modern GPU is code and commentary intended to promote new and productive ways of thinking about GPU computing.

The source code is available under the BSD 3-Clause License with some additional terms - see the COPYING and LICENSE files for details.

Based on [moderngpu](https://github.com/moderngpu/moderngpu/tree/b6b3ed52f8f7478b969e05242980c97ff21a6ab0)

# Contact

Website:

Bug Tracker:

Wiki:

# Dependencies

* CMake
* Nvidia CUDA

* Visual Studio(Windows only) ``` Nvidia CUDA do not support MinGW ```
* GCC(Linux only)

# Compile and install
For Linux run:
```
$ mkdir build && cd build
$ cmake ..
$ make
```

For Windows run:
```
> md build
> cd build
> cmake ..
Open sln project
```

For existing cmake project:
* Download library or use gitmodules¹
* Add to CMakeLists.txt
```
add_subdirectory(${PROJECT_SOURCE_DIR}/lib/newmoderngpu)

target_link_libraries(YourProjectName newmoderngpu)
target_include_directories(YourProjectName PUBLIC "${CMAKE_SOURCE_DIR}/lib/newmoderngpu/include")
```

1. Example
```
[submodule "lib/newmoderngpu"]
	path = lib/newmoderngpu
	url = https://github.com/SavaLione/newmoderngpu.git
```

## Build options:
* ```NMGPU_SHARED``` (default: ```OFF```): Build shared library
* ```NMGPU_LIBRARY``` (default: ```ON```): Build newmoderngpu library
* ```NMGPU_BENCHMARK``` (default: ```OFF```): Benchmarks
* ```NMGPU_EXAMPLES``` (default: ```OFF```): Examples