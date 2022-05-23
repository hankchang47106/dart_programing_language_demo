void foo() {} // A top-level function

class A {
  static void bar() {} // A static method
  void baz() {} // An instance method
}

void main() {
  Function x;

  // Comparing top-level functions.
  x = foo;
  print('1: ${foo == x}');

  // Comparing static methods.
  x = A.bar;
  print('2: ${A.bar == x}');

  // Comparing instance methods.
  var v = A(); // Instance #1 of A
  var w = A(); // Instance #2 of A
  var y = w;
  x = w.baz;

  // These closures refer to the same instance (#2),
  // so they're equal.
  print('3: ${y.baz == x}');

  // These closures refer to different instances,
  // so they're unequal.
  print('4: ${v.baz == w.baz}');
}