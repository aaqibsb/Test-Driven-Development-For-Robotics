add_test( dummy_test.this_should_pass /home/sas/Week4/build/test/cpp-test [==[--gtest_filter=dummy_test.this_should_pass]==] --gtest_also_run_disabled_tests)
set_tests_properties( dummy_test.this_should_pass PROPERTIES WORKING_DIRECTORY /home/sas/Week4/build/test SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( dummy_test.this_should_pass_too /home/sas/Week4/build/test/cpp-test [==[--gtest_filter=dummy_test.this_should_pass_too]==] --gtest_also_run_disabled_tests)
set_tests_properties( dummy_test.this_should_pass_too PROPERTIES WORKING_DIRECTORY /home/sas/Week4/build/test SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( dummy_test.this_will_fail /home/sas/Week4/build/test/cpp-test [==[--gtest_filter=dummy_test.this_will_fail]==] --gtest_also_run_disabled_tests)
set_tests_properties( dummy_test.this_will_fail PROPERTIES WORKING_DIRECTORY /home/sas/Week4/build/test SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set( cpp-test_TESTS dummy_test.this_should_pass dummy_test.this_should_pass_too dummy_test.this_will_fail)
