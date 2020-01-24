################################################################
#
#	Параметры сборки
#
################################################################

message(STATUS ${NMGPU_DESCRIPTION_CONNECT_BUILD})

# Вывод результатов компиляции проекта NG в папки lib и bin
if(NMGPU_CONSTANTS_SUB_NMGPU)
    set_target_properties(${NMGPU_NAME}
        PROPERTIES
        ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib"
        LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib"
        RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin"
    )
endif()