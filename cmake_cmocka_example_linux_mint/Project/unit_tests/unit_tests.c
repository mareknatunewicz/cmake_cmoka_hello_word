#include <stdint.h>
#include <stdarg.h>
#include <stddef.h>
#include <stdlib.h>
#include <setjmp.h>
#include <cmocka.h>

#include "unit_test_module.h"

int main(void)
{
    int result = 0;

    result += unit_tests_lib_offset();

    return 0;
}