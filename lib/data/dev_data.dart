import '../models/dev.dart';

class DevData {
  static List<Dev> _dev = [
    new Dev(
        name: "Amritansh Kumar",
        tech: "Backend Developer",
        imageUrl: "https://firebasestorage.googleapis.com/v0/b/conatusapp-4df41.appspot.com/o/amritansh.jpg?alt=media&token=4b9b5fd9-8ea9-42fd-9863-8992810d7229"),
    new Dev(
        name: "Naimish Verma",
        tech: "Flutter",
        imageUrl: "https://firebasestorage.googleapis.com/v0/b/conatusapp-4df41.appspot.com/o/naimish.jpg?alt=media&token=ac1e2415-8bb2-43db-b306-bb81820b5475"),
    new Dev(
        name: "Sparsh Gupta",
        tech: "Designer/Flutter",
        imageUrl: "https://firebasestorage.googleapis.com/v0/b/conatusapp-4df41.appspot.com/o/sparsh.jpg?alt=media&token=3c95da9b-a4f2-495b-97bc-4e976e2c4811")
  ];

  static get devData => List.of(_dev);
}
