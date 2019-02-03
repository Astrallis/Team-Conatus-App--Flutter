import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show DeviceOrientation, SystemChrome;
import 'utils/constants.dart';
import 'package:flutter_crashlytics/flutter_crashlytics.dart';
import 'dart:async';

void main() async {
  bool isInDebugMode = false;

  FlutterError.onError = (FlutterErrorDetails details) {
    if (isInDebugMode) {
      // In development mode simply print to console.
      FlutterError.dumpErrorToConsole(details);
    } else {
      // In production mode report to the application zone to report to
      // Crashlytics.
      Zone.current.handleUncaughtError(details.exception, details.stack);
    }
  };

  await FlutterCrashlytics().initialize();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runZoned<Future<Null>>(() async {
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
    }, onError: (error, stackTrace) async {
      // Whenever an error occurs, call the `reportCrash` function. This will send
      // Dart errors to our dev console or Crashlytics depending on the environment.
      await FlutterCrashlytics()
          .reportCrash(error, stackTrace, forceCrash: false);
    });
  });
}
