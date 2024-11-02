cmake_minimum_required(VERSION 3.28)


#set compiler
include("cmake/gcc.cmake")


#set project name
if (unit-tests)
    project(unit-tests)
else()
    project(firmware)
endif()

#set additional variable use later to specify project settings
set(project ${PROJECT_NAME})

# add executable
add_executable(${project})



if (unit-tests)
    include("${CMAKE_CURRENT_LIST_DIR}/cmake/sources_unit_tests.cmake")
    include("${CMAKE_CURRENT_LIST_DIR}/cmake/compiler_linker_options_unit_tests.cmake")
else()
    include("${CMAKE_CURRENT_LIST_DIR}/cmake/sources_app.cmake")
    include("${CMAKE_CURRENT_LIST_DIR}/cmake/compiler_linker_options_app.cmake")
endif()
 