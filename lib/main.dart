import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show DeviceOrientation, SystemChrome;
import 'pages/home_page.dart';
import 'utils/constants.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MaterialApp(
      initialRoute: RouterConstants.home,
      routes: {RouterConstants.home: (context) => HomePage()},
    ));
  });
}
