import 'square.dart';
import 'point.dart';
import 'dart:math';

int checkIfSquare(Square square) {
  var ab = sqrt(pow((square.a.x - square.b.x), 2)) +
      (pow((square.a.y - square.b.y), 2));
  var bc = sqrt(pow((square.b.x - square.c.x), 2)) +
      (pow((square.b.y - square.c.y), 2));
  var ad = sqrt(pow((square.a.x - square.d.x), 2)) +
      (pow((square.a.y - square.d.y), 2));
  var cd = sqrt(pow((square.c.x - square.d.x), 2)) +
      (pow((square.c.y - square.d.y), 2));
  if (ab == bc && ab == ad && ab == cd && bc == ad && bc == cd && ad == cd) {
    print("square is geometrically correct");
    return 1;
  }
  return 0;
}

void main() {
  int max = 5;
  int counter = 0;
  var squares = [];
  final random = new Random();

  for (var index in Iterable.generate(700)) {
    Point a = Point.origin(random.nextInt(max), random.nextInt(max));
    Point b = Point.origin(random.nextInt(max), random.nextInt(max));
    Point c = Point.origin(random.nextInt(max), random.nextInt(max));
    Point d = Point.origin(random.nextInt(max), random.nextInt(max));
    squares.add(Square.origin(a, b, c, d));
  }

  squares.forEach((square) {
    square.show();
    counter += checkIfSquare(square);
  });

  print("There were " + counter.toString() + " squares geometrically corect");
}
