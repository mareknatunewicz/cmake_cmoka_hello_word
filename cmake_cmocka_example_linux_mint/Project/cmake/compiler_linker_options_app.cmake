#add compiler option
target_compile_options(${PROJECT_NAME} PRIVATE
-O0 
-g3 
-Wall 
-c 
-fmessage-length=0
-DDEBUG

    )

#add linker option
target_link_options(${PROJECT_NAME} PRIVATE

        )