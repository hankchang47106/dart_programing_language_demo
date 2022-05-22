import 'dart:math';

void main()
{
  var a = const Point(2, 1);
  var b = const Point(1, 1);

  assert(identical(a, b)); // They are the same instance!
}