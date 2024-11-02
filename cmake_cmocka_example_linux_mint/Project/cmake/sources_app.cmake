target_sources(${project}
PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/src/main.c
)

add_subdirectory("${CMAKE_CURRENT_SOURCE_DIR}/src/module")