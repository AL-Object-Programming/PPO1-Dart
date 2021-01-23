class Point {
  int x;
  int y;

  Point.origin(int x, int y) {
    this.x = x;
    this.y = y;
  }

  String get() {
    return " (" + x.toString() + ", " + y.toString() +") ";
  }
}
