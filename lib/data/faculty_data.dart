import '../models/faculty.dart';

class FacultyData {
  static List<Faculty> _faculties = [
    new Faculty(
        name: "Dr. Sunita Yadav",
        profileUrl: "assets/images/sunita-mam.jpg",
        department: "Computer Science Engineering",
        position: "H.O.D."),
    new Faculty(
        name: "Dr. Anu Chaudhary",
        profileUrl: "assets/images/anu-sir.jpeg",
        department: "Information Technology",
        position: "H.O.D."),
    new Faculty(
        name: "Mr. Deepak Rai",
        profileUrl: "assets/images/deepak-sir.jpeg",
        department: "Computer Science Engineering",
        position: "Faculty Coordinator"),
    new Faculty(
        name: "Mr. Rohit Vashistha",
        profileUrl: "assets/images/rohit-sir.jpeg",
        department: "Computer Science Engineering",
        position: "Faculty Coordinator")
  ];

  static get facultiesData => List.of(_faculties);
}
