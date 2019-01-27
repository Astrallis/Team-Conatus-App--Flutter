import '../models/gallery.dart';

class GalleryData {
  static List<Gallery> _gallery = [
    new Gallery(
      category: "Birthday Celebration",
      imageUrl:
          "https://firebasestorage.googleapis.com/v0/b/conatus-app.appspot.com/o/Gallery%2F2nd3rd.jpg?alt=media&token=9d6e9e14-96f2-4a69-9a25-e4c5f69a0e1f",
    ),
    new Gallery(
        category: "Farewell",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/conatus-app.appspot.com/o/Gallery%2Ffarewell.jpg?alt=media&token=2a7db988-09db-45f9-8dc6-65adba208d75"),
    new Gallery(
        category: "Code-A-Bit",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/conatus-app.appspot.com/o/Gallery%2Fcodeabit.jpg?alt=media&token=660c4bb1-4eac-48fb-bc43-a9fda8d6f272"),
    new Gallery(
        category: "Birthday Celebration",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/conatus-app.appspot.com/o/Gallery%2F2ndyr.jpg?alt=media&token=3b893f4b-5226-41d5-a328-b25bc5387b55"),
    new Gallery(
        category: "Counter Strike",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/conatus-app.appspot.com/o/Gallery%2Fcounter.jpg?alt=media&token=0f600922-45b2-4f73-9418-f9e0d4e0d4bd"),
    new Gallery(
        category: "Odyssey",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/conatus-app.appspot.com/o/Gallery%2Fgroup.jpg?alt=media&token=85df369b-6b13-4212-be0a-c929d6116494"),
    new Gallery(
        category: "Code-O-Fiesta",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/conatus-app.appspot.com/o/Gallery%2Fgrp.jpg?alt=media&token=3f5810be-84a1-4294-bc41-6fa27f3e532c"),
    new Gallery(
        category: "Odyssey",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/conatus-app.appspot.com/o/Gallery%2Fodyssey.jpg?alt=media&token=bd527986-065c-44af-b987-4f82dc2e9bfc"),
    new Gallery(
        category: "Event",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/conatus-app.appspot.com/o/Gallery%2Fparty.jpg?alt=media&token=a6743a80-7b02-4537-a05f-9c61d53aff9a"),
  ];

  static get galleryData => List.of(_gallery);
}
