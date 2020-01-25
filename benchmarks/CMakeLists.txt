################################################################
#
#	Performance tests
#
################################################################
include_directories(${PROJECT_SOURCE_DIR}/include)
link_libraries(${NMGPU_NAME})

################################################################
# benchmarkinsert
################################################################
if(NMGPU_BENCHMARK_benchmarkinsert)
    project(${NMGPU_BENCHMARK_benchmarkinsert_NAME})
    add_executable(${NMGPU_BENCHMARK_benchmarkinsert_NAME} benchmarkinsert/benchmarkinsert.cu)
endif()

################################################################
# benchmarkintervalmove
################################################################
if(NMGPU_BENCHMARK_benchmarkintervalmove)
    project(${NMGPU_BENCHMARK_benchmarkintervalmove_NAME})
    add_executable(${NMGPU_BENCHMARK_benchmarkintervalmove_NAME} benchmarkintervalmove/benchmarkintervalmove.cu)
endif()

################################################################
# benchmarkjoin
################################################################
if(NMGPU_BENCHMARK_benchmarkjoin)
    project(${NMGPU_BENCHMARK_benchmarkjoin_NAME})
    add_executable(${NMGPU_BENCHMARK_benchmarkjoin_NAME} benchmarkjoin/benchmarkjoin.cu)
endif()

################################################################
# benchmarklaunchbox
################################################################
if(NMGPU_BENCHMARK_benchmarklaunchbox)
    project(${NMGPU_BENCHMARK_benchmarklaunchbox_NAME})
    add_executable(${NMGPU_BENCHMARK_benchmarklaunchbox_NAME} benchmarklaunchbox/benchmarklaunchbox.cu)
endif()

################################################################
# benchmarkloadbalance
################################################################
if(NMGPU_BENCHMARK_benchmarkloadbalance)
    project(${NMGPU_BENCHMARK_benchmarkloadbalance_NAME})
    add_executable(${NMGPU_BENCHMARK_benchmarkloadbalance_NAME} benchmarkloadbalance/benchmarkloadbalance.cu)
endif()

################################################################
# benchmarklocalitysort
################################################################
if(NMGPU_BENCHMARK_benchmarklocalitysort)
    project(${NMGPU_BENCHMARK_benchmarklocalitysort_NAME})
    add_executable(${NMGPU_BENCHMARK_benchmarklocalitysort_NAME} benchmarklocalitysort/benchmarklocalitysort.cu)
endif()

################################################################
# benchmarkmerge
################################################################
if(NMGPU_BENCHMARK_benchmarkmerge)
    project(${NMGPU_BENCHMARK_benchmarkmerge_NAME})
    add_executable(${NMGPU_BENCHMARK_benchmarkmerge_NAME} benchmarkmerge/benchmarkmerge.cu)
endif()

################################################################
# benchmarkreducebykey
################################################################
if(NMGPU_BENCHMARK_benchmarkreducebykey)
    project(${NMGPU_BENCHMARK_benchmarkreducebykey_NAME})
    add_executable(${NMGPU_BENCHMARK_benchmarkreducebykey_NAME} benchmarkreducebykey/benchmarkreducebykey.cu)
endif()

################################################################
# benchmarkscan
################################################################
if(NMGPU_BENCHMARK_benchmarkscan)
    project(${NMGPU_BENCHMARK_benchmarkscan_NAME})
    add_executable(${NMGPU_BENCHMARK_benchmarkscan_NAME} benchmarkscan/benchmarkscan.cu)
endif()

################################################################
# benchmarksegreduce
################################################################
if(NMGPU_BENCHMARK_benchmarksegreduce)
    project(${NMGPU_BENCHMARK_benchmarksegreduce_NAME})
    add_executable(${NMGPU_BENCHMARK_benchmarksegreduce_NAME} benchmarksegreduce/benchmarksegreduce.cu)
endif()

################################################################
# benchmarksegsort
################################################################
if(NMGPU_BENCHMARK_benchmarksegsort)
    project(${NMGPU_BENCHMARK_benchmarksegsort_NAME})
    add_executable(${NMGPU_BENCHMARK_benchmarksegsort_NAME} benchmarksegsort/benchmarksegsort.cu)
endif()

################################################################
# benchmarksets
################################################################
if(NMGPU_BENCHMARK_benchmarksets)
    project(${NMGPU_BENCHMARK_benchmarksets_NAME})
    add_executable(${NMGPU_BENCHMARK_benchmarksets_NAME} benchmarksets/benchmarksets.cu)
endif()

################################################################
# benchmarksort
################################################################
if(NMGPU_BENCHMARK_benchmarksort)
    project(${NMGPU_BENCHMARK_benchmarksort_NAME})
    add_executable(${NMGPU_BENCHMARK_benchmarksort_NAME} benchmarksort/benchmarksort.cu)
endif()

################################################################
# benchmarksortedsearch
################################################################
if(NMGPU_BENCHMARK_benchmarksortedsearch)
    project(${NMGPU_BENCHMARK_benchmarksortedsearch_NAME})
    add_executable(${NMGPU_BENCHMARK_benchmarksortedsearch_NAME} benchmarksortedsearch/benchmarksortedsearch.cu)
endif()

################################################################
# benchmarkspmvcsr
################################################################
if(NMGPU_BENCHMARK_benchmarkspmvcsr)
    project(${NMGPU_BENCHMARK_benchmarkspmvcsr_NAME})
    add_executable(${NMGPU_BENCHMARK_benchmarkspmvcsr_NAME} benchmarkspmvcsr/benchmarkspmvcsr.cu)
endif()