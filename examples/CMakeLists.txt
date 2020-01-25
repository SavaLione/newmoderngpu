################################################################
#
#	Examples
#
################################################################
include_directories(${PROJECT_SOURCE_DIR}/include)
link_libraries(${NMGPU_NAME})

################################################################
# demo
################################################################
if(NMGPU_EXAMPLES_demo)
    project(${NMGPU_EXAMPLES_demo_NAME})
    add_executable(${NMGPU_EXAMPLES_demo_NAME} demo/demo.cu)
endif()

################################################################
# parallelmerge
################################################################
if(NMGPU_EXAMPLES_parallelmerge)
    project(${NMGPU_EXAMPLES_parallelmerge_NAME})
    add_executable(${NMGPU_EXAMPLES_parallelmerge_NAME} parallelmerge/parallelmerge.cu)
endif()

################################################################
# testlaunchbox
################################################################
if(NMGPU_EXAMPLES_testlaunchbox)
    project(${NMGPU_EXAMPLES_testlaunchbox_NAME})
    add_executable(${NMGPU_EXAMPLES_testlaunchbox_NAME} testlaunchbox/testlaunchbox.cu)
endif()

################################################################
# testsegsortbyflags
################################################################
if(NMGPU_EXAMPLES_testsegsortbyflags)
    project(${NMGPU_EXAMPLES_testsegsortbyflags_NAME})
    add_executable(${NMGPU_EXAMPLES_testsegsortbyflags_NAME} testsegsortbyflags/testsegsortbyflags.cu)
endif()