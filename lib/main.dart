import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show DeviceOrientation, SystemChrome;
import 'utils/constants.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Color(0xFF141414),
          accentColor: Color(0xFFBA2F16)),
      initialRoute: RouterConstants.home,
      routes: RouterConstants.routerMapping,
    ));
  });
}
