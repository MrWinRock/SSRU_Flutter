void main() {
  print("Hello World!");

  String name = "MrWinRock";
  print("Hello, $name");
  print("Hello2, " + name);

  int age = 19;
  print("Age: " + age.toString());
  print("Dad's age: ${age + 30}");

  print(5 / 2);
  print(5 ~/ 2);

  
  List<String> names = ["MrWinRock", "Peter", "Strange", "Thor"];
  greetingList(names);
}

void greetingList(List<String> names) {
  for (String name in names) {
    greeting(name);
  }
}

void greeting(String name) {
  print("Greeting: $name");
}