import 'point.dart';

class Square {
  Point a;
  Point b;
  Point c;
  Point d;

  Square.origin(Point a, Point b, Point c, Point d) {
    this.a = a;
    this.b = b;
    this.c = c;
    this.d = d;
  }

  show() {
    print("a: " +
        this.a.get() +
        " b: " +
        this.b.get() +
        " c: " +
        this.c.get() +
        " d: " +
        this.d.get());
  }
}
