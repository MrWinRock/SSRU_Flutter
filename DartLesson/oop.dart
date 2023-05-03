// class = blueprint

class GameConsole {
  // Field
  int _controller = 0; // private modifier "_" as a prefix
  double _power = 0.0;
  String name = "Untitled";

  // Properties
  int get Controller {
    return _controller;
  }

  void set Controller(int value) {
    _controller = value;
  }

  // Constructor
  GameConsole(this.name, this._power, this._controller);
  
  // Method
  void Print() {
    print("===========");
    print("Console name: $name");
    print("Maximum controllers: $_controller");
    print("Power supply: $_power");
    print("Electricity: ${CalElectricityPerDay(1.5)} THB/day");
    print("===========");
  }

  double CalElectricityPerDay(double multiplier) {
    return _power * multiplier + 100;
  }

}

void main(List<String> args) {
  GameConsole ps5 = GameConsole("PS5", 120.35, 2);
  ps5.Print();
  print(ps5._power);

  var xbox = GameConsole("XBOX", 150, 4);
  xbox.Print();

  xbox.Controller = 2;
  xbox.Print();
}
