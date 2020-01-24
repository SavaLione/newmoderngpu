################################################################
#
#   new moderngpu
#
################################################################
set(SRC
	mgpucontext.cu
	mgpuutil.cpp
	mmio.cpp
	sparsematrix.cpp
)


set(NMGPU_SRC
    ${SRC}
)

################################################################
# Сборка библиотеки
################################################################

enable_language("CUDA")

if(NMGPU_SHARED)
	add_library(${NMGPU_NAME} SHARED ${NMGPU_SRC})
else()
	add_library(${NMGPU_NAME} STATIC ${NMGPU_SRC})
endif()

target_include_directories(${NMGPU_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/src)
target_include_directories(${NMGPU_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)

#if(NMGPU_USE_CUDA)
#    add_definitions(-DNMGPU_USE_CUDA)
#endif()