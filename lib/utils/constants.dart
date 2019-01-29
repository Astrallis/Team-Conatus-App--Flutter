import 'package:flutter/widgets.dart';
import '../page_exports.dart';

abstract class RouterConstants {
  static const String splaash = "/";
  static const String home = "/home";
  static const String gallery = "/gallery";
  static const String faculty_coordinators = "/faculty-coordinators";
  static const String student_coordinators = "/student-coordinators";
  static const String events = "/events";
  static const String contact_us = "/contact-us";
  static const String coordinator = "/coordinator";
  static const String registration = "/registration";
  static const String dev = "/dev";

  // final not const because it receive the context dynamically
  // route mapping
  static final Map<String, WidgetBuilder> routerMapping = {
    splaash: (context) => SplaashScreen(),
    home: (context) => HomePage(),
    student_coordinators: (context) => StudentCoordinatorsPage(),
    faculty_coordinators: (context) => FacultyCoordinatorsPage(),
    gallery: (context) => GalleryPage(),
    coordinator: (context) => CoordinatorPage(),
    registration: (context) => CRegistrationPage(),
    events: (context) => EventsPage(),
    dev: (context) => DevPage()
  };
}

abstract class Dimensions {
  static const double appBarHeight = 70.0;
  static const double avatarRadius = 60.0;
  static const double gap = 10.0;
  static const double dotSize = 8.0;
  static const double buttonRadius = 8.0;
  static const double buttonHeight = 45.0;
  static const double iconsHeight = 18.0;
  static const double iconsWidth = 18.0;
  static const double coordinatorBackgroundHeight = 240.0;
}

abstract class ConatusFonts {
  static const double large = 22.0;
  static const double medium = 20.0;
  static const double small = 17.0;
  static const double extraSmall = 15.0;
}

abstract class ConatusColors {
  static const int colorPrimary = 0xFFB83227;
  static const int colorAccent = 0xFFBA2F16;
  static const int transparent = 0xFF00000000;
  static const int lightTransparent = 0xFF30000000;
  static const int darkTransparent = 0xFF99000000;
  static const int silver = 0xFFC0C0C0;
}
