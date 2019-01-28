import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show DeviceOrientation, SystemChrome;
import 'utils/constants.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(
      MaterialApp(
        theme: ThemeData(
            fontFamily: "Ubuntu",
            brightness: Brightness.dark,
            primaryColor: Color(ConatusColors.colorPrimary),
            accentColor: Color(ConatusColors.colorAccent)),
        initialRoute: RouterConstants.splaash,
        routes: RouterConstants.routerMapping,
      ),
    );
  });
}
