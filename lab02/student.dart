class Student {
  String name;
  String lastName;
  int index;
  bool status;

  Student.origin(String name, String lastName, int index, bool status) {
    this.name = name;
    this.lastName = lastName;
    this.index = index;
    this.status = status;
  }

  void show() {
  print( lastName + " " + name + " (" + index.toString() + ")");
  }
}
