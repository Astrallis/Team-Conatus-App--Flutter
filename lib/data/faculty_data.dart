import '../models/faculty.dart';

class FacultyData {
  static List<Faculty> _faculties = [
    new Faculty(
        name: "Dr. Sunita Yadav",
        profileUrl: "https://firebasestorage.googleapis.com/v0/b/conatusapp-4df41.appspot.com/o/sunita-mam.jpg?alt=media&token=72a89d52-1c84-4b35-a710-313d06a4f12d",
        department: "Computer Science Engineering",
        position: "H.O.D."),
    new Faculty(
        name: "Dr. Anu Chaudhary",
        profileUrl: "https://firebasestorage.googleapis.com/v0/b/conatusapp-4df41.appspot.com/o/anu-sir.jpeg?alt=media&token=4dc9980a-c32d-46de-92b1-e76d0c0a8aa4",
        department: "Information Technology",
        position: "H.O.D."),
    new Faculty(
        name: "Mr. Deepak Rai",
        profileUrl: "https://firebasestorage.googleapis.com/v0/b/conatusapp-4df41.appspot.com/o/deepak-sir.jpeg?alt=media&token=c4e20b82-b3a9-4b99-8fae-041f04d62f6c",
        department: "Computer Science Engineering",
        position: "Faculty Coordinator"),
    new Faculty(
        name: "Mr. Rohit Vashistha",
        profileUrl: "https://firebasestorage.googleapis.com/v0/b/conatusapp-4df41.appspot.com/o/rohit-sir.jpeg?alt=media&token=4116fb73-9bdd-4304-91b3-b64aefe73b0f",
        department: "Computer Science Engineering",
        position: "Faculty Coordinator")
  ];

  static get facultiesData => List.of(_faculties);
}
