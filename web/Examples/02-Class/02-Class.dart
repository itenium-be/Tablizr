import 'dart:math';

class Point {
  static const double DefaultX = 0;

  double x = 0;
  final double y;

  // getters/setters
  Point get swap => Point(this.y, this.x);
  set add(Point p) => Point(this.x + p.x, this.y + p.y);

  // Syntactic sugar for setting x and y
  // before the constructor body runs.
  Point(this.x, this.y);

  // Named constructor
  Point.origin()
      : x = 4,
        y = 2;

  // Methods
  @deprecated
  double distanceTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;
    return sqrt(dx * dx + dy * dy);
  }

  // Abstract method
  // void distanceToCore();

  // Operator Overloading
  Point operator +(Point p) => Point(x + p.x, y + p.y);
}

class Point3D extends Point {
  double z = 0;

  Point3D() : super(0, 1);
  // Point3D() : super.origin();
}

// Abstract classes can be used as an "interface"
// class Person implements AbstractAudit {}

// Or use a mixin
mixin Audit {
  String createdBy = '';
  DateTime createdOn = DateTime.now();
}

class Person with Audit {}

// Enums exist
enum Color { red, green, blue }

void main() {
  var pt1 = Point(4, 2);
  var pt2 = Point.origin();

  var clr = Color.red;
}
