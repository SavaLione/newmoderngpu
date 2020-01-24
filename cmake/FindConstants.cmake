################################################################
#
#	Константы проекта
#
################################################################

message(STATUS "${NMGPU_DESCRIPTION_CONNECT_CONSTANTS}")

set(NMGPU_CONSTANTS 1)

################################################################
# Параметры библиотеки
################################################################
set(NMGPU_SHARED 0 CACHE BOOL "Shared library.")

#set(NMGPU_LEVEL_OPTIMIZATION "O2" CACHE STRING "Optimization level")
#set(NMGPU_LEVEL_OPTIMIZATION_VALUES "O0;O1;O2;O3")
#set_property(CACHE NMGPU_LEVEL_OPTIMIZATION PROPERTY STRINGS ${NMGPU_LEVEL_OPTIMIZATION_VALUES})
#Usage: if(NMGPU_LEVEL_OPTIMIZATION STREQUAL "O0")

################################################################
# Названия и компиляция субпроектов
################################################################

# New moderngpu
set(NMGPU_LIBRARY 1 CACHE BOOL "New moderngpu library")

# Тесты и примеры
set(NMGPU_BENCHMARK 0 CACHE BOOL "benchmarks")
set(NMGPU_EXAMPLES 0 CACHE BOOL "examples")

if(NMGPU_BENCHMARK)
    set(NMGPU_BENCHMARK_benchmarkinsert 1 CACHE BOOL "benchmarkinsert")
    set(NMGPU_BENCHMARK_benchmarkinsert_NAME benchmarkinsert)

    set(NMGPU_BENCHMARK_benchmarkintervalmove 1 CACHE BOOL "benchmarkintervalmove")
    set(NMGPU_BENCHMARK_benchmarkintervalmove_NAME benchmarkintervalmove)

    set(NMGPU_BENCHMARK_benchmarkjoin 1 CACHE BOOL "benchmarkjoin")
    set(NMGPU_BENCHMARK_benchmarkjoin_NAME benchmarkjoin)

    set(NMGPU_BENCHMARK_benchmarklaunchbox 1 CACHE BOOL "benchmarklaunchbox")
    set(NMGPU_BENCHMARK_benchmarklaunchbox_NAME benchmarklaunchbox)

    set(NMGPU_BENCHMARK_benchmarkloadbalance 1 CACHE BOOL "benchmarkloadbalance")
    set(NMGPU_BENCHMARK_benchmarkloadbalance_NAME benchmarkloadbalance)

    set(NMGPU_BENCHMARK_benchmarklocalitysort 1 CACHE BOOL "benchmarklocalitysort")
    set(NMGPU_BENCHMARK_benchmarklocalitysort_NAME benchmarklocalitysort)

    set(NMGPU_BENCHMARK_benchmarkmerge 1 CACHE BOOL "benchmarkmerge")
    set(NMGPU_BENCHMARK_benchmarkmerge_NAME benchmarkmerge)

    set(NMGPU_BENCHMARK_benchmarkreducebykey 1 CACHE BOOL "benchmarkreducebykey")
    set(NMGPU_BENCHMARK_benchmarkreducebykey_NAME benchmarkreducebykey)

    set(NMGPU_BENCHMARK_benchmarkscan 1 CACHE BOOL "benchmarkscan")
    set(NMGPU_BENCHMARK_benchmarkscan_NAME benchmarkscan)

    set(NMGPU_BENCHMARK_benchmarksegreduce 1 CACHE BOOL "benchmarksegreduce")
    set(NMGPU_BENCHMARK_benchmarksegreduce_NAME benchmarksegreduce)

    set(NMGPU_BENCHMARK_benchmarksegsort 1 CACHE BOOL "benchmarksegsort")
    set(NMGPU_BENCHMARK_benchmarksegsort_NAME benchmarksegsort)

    set(NMGPU_BENCHMARK_benchmarksets 1 CACHE BOOL "benchmarksets")
    set(NMGPU_BENCHMARK_benchmarksets_NAME benchmarksets)

    set(NMGPU_BENCHMARK_benchmarksort 1 CACHE BOOL "benchmarksort")
    set(NMGPU_BENCHMARK_benchmarksort_NAME benchmarksort)

    set(NMGPU_BENCHMARK_benchmarksortedsearch 1 CACHE BOOL "benchmarksortedsearch")
    set(NMGPU_BENCHMARK_benchmarksortedsearch_NAME benchmarksortedsearch)

    set(NMGPU_BENCHMARK_benchmarkspmvcsr 1 CACHE BOOL "benchmarkspmvcsr")
    set(NMGPU_BENCHMARK_benchmarkspmvcsr_NAME benchmarkspmvcsr)
endif()

if(NMGPU_EXAMPLES)
    set(NMGPU_EXAMPLES_demo 1 CACHE BOOL "demo")
    set(NMGPU_EXAMPLES_demo_NAME demo)

    set(NMGPU_EXAMPLES_parallelmerge 1 CACHE BOOL "parallelmerge")
    set(NMGPU_EXAMPLES_parallelmerge_NAME parallelmerge)

    set(NMGPU_EXAMPLES_testlaunchbox 1 CACHE BOOL "testlaunchbox")
    set(NMGPU_EXAMPLES_testlaunchbox_NAME testlaunchbox)

    set(NMGPU_EXAMPLES_testsegsortbyflags 1 CACHE BOOL "testsegsortbyflags")
    set(NMGPU_EXAMPLES_testsegsortbyflags_NAME testsegsortbyflags)
endif()