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
# Library assembly
################################################################

enable_language("CUDA")

if(NMGPU_SHARED)
	add_library(${NMGPU_NAME} SHARED ${NMGPU_SRC})
else()
	add_library(${NMGPU_NAME} STATIC ${NMGPU_SRC})
endif()

target_include_directories(${NMGPU_NAME} PUBLIC ${PROJECT_SOURCE_DIR}/src)
target_include_directories(${NMGPU_NAME} PUBLIC ${PROJECT_SOURCE_DIR}/include)