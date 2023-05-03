import 'dart:math';

enum Colors { red, blue, green }

Map<Colors, String> ColorsMap = {
  Colors.red: "Red",
  Colors.blue: "Blue",
  Colors.green: "Green",
};

class Circle {
  double _radius = 1.0;
  Colors _color = Colors.red;

  Circle();
  Circle.withRadius(this._radius);

  double get getRadius {
    return this._radius;
  }

  double get getArea {
    return (pi * this._radius * this._radius);
  }

  String toString() {
    return "Shape: Circle, Radius: $_radius, Color: ${ColorsMap[_color]}";
  }
}

class Cylinder extends Circle {
  double _height = 1.0;

  Cylinder();
  Cylinder.withRadius(double radius) : super.withRadius(radius);
  Cylinder.withRadiusHeight(double radius, this._height) {
    super._radius = radius;
  }

  double get getHeight {
    return this._height;
  }

  double get getVolume {
    return (super.getArea * this._height);
  }

  @override
  String toString() {
    return "Shape: Cylinder, Radius: $_radius, Height: $_height ,Color: ${ColorsMap[_color]}";
  }
}

void main(List<String> args) {
  var circle1 = Circle();
  var circle2 = Circle.withRadius(5);

  print(circle1.toString());
  print(circle2.toString());

  var cylinder1 = Cylinder();
  var cylinder2 = Cylinder.withRadiusHeight(5, 10);

  print(cylinder1.toString());

  print("Volume: ${cylinder1.getVolume}");
  print("Volume: ${cylinder2.getVolume}");
}
