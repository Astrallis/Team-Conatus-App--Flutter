import '../models/dev.dart';

class DevData {
  static List<Dev> _dev = [
    new Dev(
        name: "Amritansh Kumar",
        tech: "Backend Developer",
        imageUrl: "assets/images/amritansh.jpg"),
    new Dev(
        name: "Naimish Verma",
        tech: "Flutter",
        imageUrl: "assets/images/naimish.jpg"),
    new Dev(
        name: "Sparsh Gupta",
        tech: "Designer/Flutter",
        imageUrl: "assets/images/sparsh.jpg")
  ];

  static get devData => List.of(_dev);
}
