int foo(Map? a) {
  // expect_lint: avoid_null_check_operator
  return a!['foo'];
}
