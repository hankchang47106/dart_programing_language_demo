class Point {
  double x, y;

  // The main constructor for this class.
  Point(this.x, this.y);

  // Delegates to the main constructor.
  Point.alongXAxis(double x) : this(x, 0);
}

void main() {
  var p = Point(2, 3);
  print(p.x);
  p = Point.alongXAxis(9);
  print(p.x);
}