import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show DeviceOrientation, SystemChrome;
import 'utils/constants.dart';
import 'package:flutter_crashlytics/flutter_crashlytics.dart';
import 'dart:async';
import './utils/push_notifications.dart';

void main() async {
  bool isInDebugMode = false;
  PushNotifications pushNotifications = PushNotifications();
  pushNotifications.configureNotification();

  FlutterError.onError = (FlutterErrorDetails details) {
    if (isInDebugMode) {
      FlutterError.dumpErrorToConsole(details);
    } else {
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
      await FlutterCrashlytics()
          .reportCrash(error, stackTrace, forceCrash: false);
    });
  });
}
