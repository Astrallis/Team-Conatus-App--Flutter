import 'package:meta/meta.dart';

class Student {
  String name;
  String email;
  String student_no;
  String roll_number;
  String contact_number;
  String branch;

  Student(
      {@required this.name,
      @required this.email,
      @required this.student_no,
      @required this.roll_number,
      @required this.contact_number,
      @required this.branch});
}
