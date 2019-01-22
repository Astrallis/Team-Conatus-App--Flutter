import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show DeviceOrientation, SystemChrome;
import 'utils/constants.dart';
import 'package:scoped_model/scoped_model.dart';
import './data/root.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(ScopedModel(
        model: RootModel(),
        child: MaterialApp(
          theme: ThemeData(
              fontFamily: "Ubuntu",
              brightness: Brightness.dark,
              primaryColor: Color(ConatusColors.colorPrimary),
              accentColor: Color(ConatusColors.colorAccent)),
          initialRoute: RouterConstants.home,
          routes: RouterConstants.routerMapping,
        )));
  });
}
