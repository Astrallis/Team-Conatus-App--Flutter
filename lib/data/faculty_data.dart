import '../models/faculty.dart';

class FacultyData {
  static List<Faculty> _faculties = [
    new Faculty(
        name: "Dr. Sunita Yadav",
        profileUrl: "assets/images/avatar.jpeg",
        department: "CSE",
        position: "H.O.D."),
    new Faculty(
        name: "Dr. Anu Chaudhary",
        profileUrl: "assets/images/avatar.jpeg",
        department: "IT",
        position: "H.O.D."),
    new Faculty(
        name: "Mr. Deepak Rai",
        profileUrl: "assets/images/avatar.jpeg",
        department: "CSE",
        position: "Faculty Coordinator"),
    new Faculty(
        name: "Mr. Rohit Vashistha",
        profileUrl: "assets/images/avatar.jpeg",
        department: "CSE",
        position: "Faculty Coordinator")
  ];

  static get facultiesData => List.of(_faculties);
}
