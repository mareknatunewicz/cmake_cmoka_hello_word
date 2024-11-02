target_sources(${project}
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/unit_test_module.c
    )

target_include_directories(${project} PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}")
