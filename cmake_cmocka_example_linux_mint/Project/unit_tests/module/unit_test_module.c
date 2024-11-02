

#include "unit_test_module.h"
#include <cmocka.h>
#include <cmocka_pbc.h>
#include "module.h"
void unit_offset_module_1(void **state)
{
    module_func1();
	assert_int_equal(1, 6);
}

void unit_offset_module_2(void **state)
{
    module_func1();
	assert_int_equal(1, 1);
}


const struct CMUnitTest unit_tests_module[] =
{
    cmocka_unit_test(unit_offset_module_1),
    cmocka_unit_test(unit_offset_module_2),
};

int unit_tests_lib_offset(void)
{
    return cmocka_run_group_tests(unit_tests_module, NULL, NULL);
}