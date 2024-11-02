#add compiler option
target_compile_options(${PROJECT_NAME} PRIVATE
-O0 
-g
-ftest-coverage 
-fprofile-arcs 
-Wall 
-c 
-fmessage-length=0
--coverage
    )

#add linker option
target_link_options(${PROJECT_NAME} PRIVATE
-lgcov --coverage   # necessary by gcov
#-ftest-coverage 
#-fprofile-arcs
        )