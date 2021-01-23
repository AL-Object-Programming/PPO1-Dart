import 'dart:math';
import 'student.dart';

void main() {
  var students = [];
  var names = [
    'Andrew',
    'William',
    'James',
    'Harper',
    'Mason',
    'Evelyn',
    'Ella',
    'Avery'
  ];
  var last_names = ['Smith', 'Jones', 'Williams', 'Brown'];
  final random = new Random();
  int index = 15;
  while (index != 0) {
    students.add(Student.origin(
        names[random.nextInt(names.length)],
        last_names[random.nextInt(last_names.length)],
        random.nextInt(999) + 39000,
        random.nextBool()));
    index--;
  }

  students.forEach((student) {
    if(student.status == true){
          student.show();
    }
  });
}
