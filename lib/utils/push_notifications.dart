import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/services.dart';

class PushNotifications {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  static const platform = const MethodChannel('conatus-app/notification');

  void configureNotification() {
    _firebaseMessaging.requestNotificationPermissions();
    _firebaseMessaging.configure(onMessage: _onMessage);
  }

  Future<dynamic> _onMessage(Map<String, dynamic> message) async {
    print(message);
    String body = message['notification']['body'];
    showNotification(body);
    return;
  }

  Future<void> showNotification(body) async {
    try {
      await platform.invokeMethod('showNotification',body);
    } on PlatformException catch (e) {
      print("An error occured!!");
    }
    ;
  }
}
