    target_link_libraries(${project} PRIVATE cmocka)
    target_link_libraries(${project} PRIVATE gcov)
    target_sources(${project}
        PUBLIC
            ${CMAKE_CURRENT_SOURCE_DIR}/unit_tests/unit_tests.c
    )


    add_subdirectory("${CMAKE_CURRENT_SOURCE_DIR}/unit_tests/module")
    add_subdirectory("${CMAKE_CURRENT_SOURCE_DIR}/src/module")