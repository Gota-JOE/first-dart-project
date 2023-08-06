import 'dart:math';

void main(List<String> args) {
  Circle c1 = Circle(5);
  c1.area();
  print("");
  Sphere s1 = Sphere(3);
  s1.area();
  s1.volume();
}

class Shapes {
  Shapes() {
    print('Calculating the area of the shape...');
  }
  area() {
    return 0;
  }
}

abstract class TwoDimensionalShape extends Shapes {
  TwoDimensionalShape() {
    print('Calculating the area of the 2D shape...');
  }
}

abstract class ThreeDimensionalShape extends Shapes {
  ThreeDimensionalShape() {
    print('Calculating the area and volume of the 3D shape...');
  }
  volume();
}

class Circle extends TwoDimensionalShape {
  int? radius;
  Circle(int radius) {
    this.radius = radius;
  }

  @override
  area() {
    return pi * radius! * radius!;
  }
}

class Sphere extends ThreeDimensionalShape {
  int? radius;

  Sphere(radius) {
    this.radius = radius;
  }
  @override
  area() {
    print('Area of the sphere is ${4 * radius! * radius! * pi}');
  }

  @override
  volume() {
    print('Volume of shpere is ${4 / 3 * radius! * radius! * radius! * pi}');
  }
}
