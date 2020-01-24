################################################################
#
#	Примеры
#
################################################################

################################################################
# demo
################################################################
if(NMGPU_EXAMPLES_demo)
    project(${NMGPU_EXAMPLES_demo_NAME})
    add_executable(${NMGPU_EXAMPLES_demo_NAME} demo/demo.cu)
    target_link_libraries(${NMGPU_EXAMPLES_demo_NAME} ${NMGPU_NAME})
    target_include_directories(${NMGPU_EXAMPLES_demo_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# parallelmerge
################################################################
if(NMGPU_EXAMPLES_parallelmerge)
    project(${NMGPU_EXAMPLES_parallelmerge_NAME})
    add_executable(${NMGPU_EXAMPLES_parallelmerge_NAME} parallelmerge/parallelmerge.cu)
    target_link_libraries(${NMGPU_EXAMPLES_parallelmerge_NAME} ${NMGPU_NAME})
    target_include_directories(${NMGPU_EXAMPLES_parallelmerge_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# testlaunchbox
################################################################
if(NMGPU_EXAMPLES_testlaunchbox)
    project(${NMGPU_EXAMPLES_testlaunchbox_NAME})
    add_executable(${NMGPU_EXAMPLES_testlaunchbox_NAME} testlaunchbox/testlaunchbox.cu)
    target_link_libraries(${NMGPU_EXAMPLES_testlaunchbox_NAME} ${NMGPU_NAME})
    target_include_directories(${NMGPU_EXAMPLES_testlaunchbox_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()

################################################################
# testsegsortbyflags
################################################################
if(NMGPU_EXAMPLES_testsegsortbyflags)
    project(${NMGPU_EXAMPLES_testsegsortbyflags_NAME})
    add_executable(${NMGPU_EXAMPLES_testsegsortbyflags_NAME} testsegsortbyflags/testsegsortbyflags.cu)
    target_link_libraries(${NMGPU_EXAMPLES_testsegsortbyflags_NAME} ${NMGPU_NAME})
    target_include_directories(${NMGPU_EXAMPLES_testsegsortbyflags_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/include)
endif()