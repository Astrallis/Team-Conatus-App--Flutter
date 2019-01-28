
import 'package:meta/meta.dart';
import 'package:dson/dson.dart';

@serializable
class Student {
  @SerializedName("name")
  String name;

  @SerializedName("email")
  String email;

  @SerializedName("student_number")
  String studentNumber;

  @SerializedName("roll_number")
  String rollNumber;

  @SerializedName("contact_number")
  String contactNumber;

  @SerializedName("branch")
  String branch;

  Student(
      {@required this.name,
      @required this.email,
      @required this.studentNumber,
      @required this.rollNumber,
      @required this.contactNumber,
      @required this.branch});
}
