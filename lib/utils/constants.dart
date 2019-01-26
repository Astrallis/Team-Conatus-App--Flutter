import 'package:flutter/widgets.dart';
import '../page_exports.dart';

abstract class RouterConstants {
  static const String home = "/";
  static const String gallery = "/gallery";
  static const String faculty_coordinators = "/faculty-coordinators";
  static const String student_coordinators = "/student-coordinators";
  static const String events = "/events";
  static const String contact_us = "/contact-us";
  static const String coordinator = "/coordinator";

  // final not const because it receive the context dynamically
  // route mapping
  static final Map<String, WidgetBuilder> routerMapping = {
    home: (context) => HomePage(),
    student_coordinators: (context) => StudentCoordinatorsPage(),
    faculty_coordinators: (context) => FacultyCoordinatorsPage(),
    gallery: (context) => GalleryPage(),
    coordinator: (context) => CoordinatorPage(),
  };
}

abstract class Dimensions {
  static const double appBarHeight = 70.0;
  static const double avatarRadius = 65.0;
  static const double gap = 10.0;
  static const double dotSize = 8.0;
  static const double buttonRadius = 8.0;
  static const double buttonHeight = 45.0;
  static const double coordinatorBackgroundHeight = 240.0;
}

abstract class ConatusFonts {
  static const double large = 28.0;
  static const double medium = 24.0;
  static const double small = 20.0;
  static const double extraSmall = 18.0;
}

abstract class ConatusColors {
  static const int colorPrimary = 0xFFB83227;
  static const int colorAccent = 0xFFBA2F16;
  static const int transparent = 0xFF00000000;
  static const int lightTransparent = 0xFF30000000;
  static const int bgc = 0xFF505050 ;
}
