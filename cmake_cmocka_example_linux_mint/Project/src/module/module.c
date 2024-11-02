#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

static void func2(char *str)
{
    for (int i = 0; i < 10; i++)
    {
        printf("%s\n", str);
    }
}
 


void module_func1(void)
{
    printf("module_func1\n");
    //func2("works");
}