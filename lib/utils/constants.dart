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
}

abstract class ConatusColors {
  static const int defaultAppBar = 0xFFB83227;
  static const int transparent = 0xFF00000000;
  static const int lightTransparent = 0xFF30000000;
}
