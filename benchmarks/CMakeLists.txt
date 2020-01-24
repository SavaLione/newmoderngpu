################################################################
#
#	Тесты производительности
#
################################################################

################################################################
# benchmarkinsert
################################################################
if(NMGPU_BENCHMARK_benchmarkinsert)
    project(${NMGPU_BENCHMARK_benchmarkinsert_NAME})
    add_executable(${NMGPU_BENCHMARK_benchmarkinsert_NAME} benchmarkinsert/benchmarkinsert.cu)
    target_link_libraries(${NMGPU_BENCHMARK_benchmarkinsert_NAME} ${NMGPU_NAME})
    target_include_directories(${NMGPU_BENCHMARK_benchmarkinsert_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# benchmarkintervalmove
################################################################
if(NMGPU_BENCHMARK_benchmarkintervalmove)
    project(${NMGPU_BENCHMARK_benchmarkintervalmove_NAME})
    add_executable(${NMGPU_BENCHMARK_benchmarkintervalmove_NAME} benchmarkintervalmove/benchmarkintervalmove.cu)
    target_link_libraries(${NMGPU_BENCHMARK_benchmarkintervalmove_NAME} ${NMGPU_NAME})
    target_include_directories(${NMGPU_BENCHMARK_benchmarkintervalmove_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# benchmarkjoin
################################################################
if(NMGPU_BENCHMARK_benchmarkjoin)
    project(${NMGPU_BENCHMARK_benchmarkjoin_NAME})
    add_executable(${NMGPU_BENCHMARK_benchmarkjoin_NAME} benchmarkjoin/benchmarkjoin.cu)
    target_link_libraries(${NMGPU_BENCHMARK_benchmarkjoin_NAME} ${NMGPU_NAME})
    target_include_directories(${NMGPU_BENCHMARK_benchmarkjoin_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# benchmarklaunchbox
################################################################
if(NMGPU_BENCHMARK_benchmarklaunchbox)
    project(${NMGPU_BENCHMARK_benchmarklaunchbox_NAME})
    add_executable(${NMGPU_BENCHMARK_benchmarklaunchbox_NAME} benchmarklaunchbox/benchmarklaunchbox.cu)
    target_link_libraries(${NMGPU_BENCHMARK_benchmarklaunchbox_NAME} ${NMGPU_NAME})
    target_include_directories(${NMGPU_BENCHMARK_benchmarklaunchbox_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# benchmarkloadbalance
################################################################
if(NMGPU_BENCHMARK_benchmarkloadbalance)
    project(${NMGPU_BENCHMARK_benchmarkloadbalance_NAME})
    add_executable(${NMGPU_BENCHMARK_benchmarkloadbalance_NAME} benchmarkloadbalance/benchmarkloadbalance.cu)
    target_link_libraries(${NMGPU_BENCHMARK_benchmarkloadbalance_NAME} ${NMGPU_NAME})
    target_include_directories(${NMGPU_BENCHMARK_benchmarkloadbalance_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# benchmarklocalitysort
################################################################
if(NMGPU_BENCHMARK_benchmarklocalitysort)
    project(${NMGPU_BENCHMARK_benchmarklocalitysort_NAME})
    add_executable(${NMGPU_BENCHMARK_benchmarklocalitysort_NAME} benchmarklocalitysort/benchmarklocalitysort.cu)
    target_link_libraries(${NMGPU_BENCHMARK_benchmarklocalitysort_NAME} ${NMGPU_NAME})
    target_include_directories(${NMGPU_BENCHMARK_benchmarklocalitysort_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# benchmarkmerge
################################################################
if(NMGPU_BENCHMARK_benchmarkmerge)
    project(${NMGPU_BENCHMARK_benchmarkmerge_NAME})
    add_executable(${NMGPU_BENCHMARK_benchmarkmerge_NAME} benchmarkmerge/benchmarkmerge.cu)
    target_link_libraries(${NMGPU_BENCHMARK_benchmarkmerge_NAME} ${NMGPU_NAME})
    target_include_directories(${NMGPU_BENCHMARK_benchmarkmerge_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# benchmarkreducebykey
################################################################
if(NMGPU_BENCHMARK_benchmarkreducebykey)
    project(${NMGPU_BENCHMARK_benchmarkreducebykey_NAME})
    add_executable(${NMGPU_BENCHMARK_benchmarkreducebykey_NAME} benchmarkreducebykey/benchmarkreducebykey.cu)
    target_link_libraries(${NMGPU_BENCHMARK_benchmarkreducebykey_NAME} ${NMGPU_NAME})
    target_include_directories(${NMGPU_BENCHMARK_benchmarkreducebykey_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# benchmarkscan
################################################################
if(NMGPU_BENCHMARK_benchmarkscan)
    project(${NMGPU_BENCHMARK_benchmarkscan_NAME})
    add_executable(${NMGPU_BENCHMARK_benchmarkscan_NAME} benchmarkscan/benchmarkscan.cu)
    target_link_libraries(${NMGPU_BENCHMARK_benchmarkscan_NAME} ${NMGPU_NAME})
    target_include_directories(${NMGPU_BENCHMARK_benchmarkscan_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# benchmarksegreduce
################################################################
if(NMGPU_BENCHMARK_benchmarksegreduce)
    project(${NMGPU_BENCHMARK_benchmarksegreduce_NAME})
    add_executable(${NMGPU_BENCHMARK_benchmarksegreduce_NAME} benchmarksegreduce/benchmarksegreduce.cu)
    target_link_libraries(${NMGPU_BENCHMARK_benchmarksegreduce_NAME} ${NMGPU_NAME})
    target_include_directories(${NMGPU_BENCHMARK_benchmarksegreduce_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# benchmarksegsort
################################################################
if(NMGPU_BENCHMARK_benchmarksegsort)
    project(${NMGPU_BENCHMARK_benchmarksegsort_NAME})
    add_executable(${NMGPU_BENCHMARK_benchmarksegsort_NAME} benchmarksegsort/benchmarksegsort.cu)
    target_link_libraries(${NMGPU_BENCHMARK_benchmarksegsort_NAME} ${NMGPU_NAME})
    target_include_directories(${NMGPU_BENCHMARK_benchmarksegsort_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# benchmarksets
################################################################
if(NMGPU_BENCHMARK_benchmarksets)
    project(${NMGPU_BENCHMARK_benchmarksets_NAME})
    add_executable(${NMGPU_BENCHMARK_benchmarksets_NAME} benchmarksets/benchmarksets.cu)
    target_link_libraries(${NMGPU_BENCHMARK_benchmarksets_NAME} ${NMGPU_NAME})
    target_include_directories(${NMGPU_BENCHMARK_benchmarksets_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# benchmarksort
################################################################
if(NMGPU_BENCHMARK_benchmarksort)
    project(${NMGPU_BENCHMARK_benchmarksort_NAME})
    add_executable(${NMGPU_BENCHMARK_benchmarksort_NAME} benchmarksort/benchmarksort.cu)
    target_link_libraries(${NMGPU_BENCHMARK_benchmarksort_NAME} ${NMGPU_NAME})
    target_include_directories(${NMGPU_BENCHMARK_benchmarksort_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# benchmarksortedsearch
################################################################
if(NMGPU_BENCHMARK_benchmarksortedsearch)
    project(${NMGPU_BENCHMARK_benchmarksortedsearch_NAME})
    add_executable(${NMGPU_BENCHMARK_benchmarksortedsearch_NAME} benchmarksortedsearch/benchmarksortedsearch.cu)
    target_link_libraries(${NMGPU_BENCHMARK_benchmarksortedsearch_NAME} ${NMGPU_NAME})
    target_include_directories(${NMGPU_BENCHMARK_benchmarksortedsearch_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# benchmarkspmvcsr
################################################################
if(NMGPU_BENCHMARK_benchmarkspmvcsr)
    project(${NMGPU_BENCHMARK_benchmarkspmvcsr_NAME})
    add_executable(${NMGPU_BENCHMARK_benchmarkspmvcsr_NAME} benchmarkspmvcsr/benchmarkspmvcsr.cu)
    target_link_libraries(${NMGPU_BENCHMARK_benchmarkspmvcsr_NAME} ${NMGPU_NAME})
    target_include_directories(${NMGPU_BENCHMARK_benchmarkspmvcsr_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()