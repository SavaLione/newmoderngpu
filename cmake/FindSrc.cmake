################################################################
#
#	Субпроекты
#
################################################################

message(STATUS ${NMGPU_DESCRIPTION_CONNECT_SUB})

# Библиотека newmoderngpu
if(NMGPU_LIBRARY)
	add_subdirectory(src/)
	message(STATUS "	New moderngpu ok.")
endif()

################################################################
#	Тесты и примеры
################################################################

# Тесты
if(NMGPU_BENCHMARK)
	add_subdirectory(benchmarks/)
	message(STATUS "	Benchmarks ok.")
endif()

# Примеры
if(NMGPU_EXAMPLES)
	add_subdirectory(examples/)
	message(STATUS "	Examples ok.")
endif()