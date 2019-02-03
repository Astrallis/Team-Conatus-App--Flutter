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
            "https://firebasestorage.googleapis.com/v0/b/conatus-app.appspot.com/o/Gallery%2Fodyssey.jpg?alt=media&token=8d92d4cf-f8c2-4874-b36f-5f419b3b3096"),
    new Gallery(
        category: "Seniors",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/conatus-app.appspot.com/o/Gallery%2F1.jpg?alt=media&token=9ab833f7-4224-438e-936b-2fc5f25399e3"),
    new Gallery(
        category: "Sunita Mam",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/conatus-app.appspot.com/o/Gallery%2F2.jpg?alt=media&token=31fb6deb-87d8-4061-893d-dd75e123a532"),
    new Gallery(
        category: "Arjun Sir",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/conatus-app.appspot.com/o/Gallery%2F3.jpg?alt=media&token=da54e6e1-7557-4b87-9232-88405e4d3117"),
    new Gallery(
        category: "Registration",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/conatus-app.appspot.com/o/Gallery%2F4.jpg?alt=media&token=e9f7f0bc-f262-4c36-9679-2447421cc406"),
    new Gallery(
        category: "Code",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/conatus-app.appspot.com/o/Gallery%2F5.jpg?alt=media&token=b7a93e67-cd3a-42b2-8d51-995027dde87c"),
    new Gallery(
        category: "Strike",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/conatus-app.appspot.com/o/Gallery%2F6.jpg?alt=media&token=ccaacec2-fe72-4b04-8cff-f25288b12b0b"),
    new Gallery(
        category: "Faculty",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/conatus-app.appspot.com/o/Gallery%2F7.jpg?alt=media&token=cda41cb5-e46b-4878-b367-f037dead28fa")
  ];

  static get galleryData => List.of(_gallery);
}
