#include <stdio.h>
#include <stdlib.h>
#include <ctest.h>
#include "functions.h"

CTEST(Input_data, test1){
	ASSERT_EQUAL(-1, check(-1, 9999));
}

CTEST(Input_data, test2){
	ASSERT_EQUAL(-1, check(0, 9999));
}

CTEST(Input_data, test3){
	ASSERT_EQUAL(-1, check(365, 9999));
}

CTEST(Input_data, test4){
	ASSERT_EQUAL(-1, check(366, 9999));
}

CTEST(Input_data, test5){
	ASSERT_EQUAL(-1, check(-1, 10000));
}

CTEST(Input_data, test6){
	ASSERT_EQUAL(0, check(0, 10000));
}

CTEST(Input_data, test7){
	ASSERT_EQUAL(0, check(365, 10000));
}

CTEST(Input_data, test8){
	ASSERT_EQUAL(-1, check(366, 10000));
}