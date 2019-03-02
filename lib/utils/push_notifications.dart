import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotifications {
  static final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  static void configureNotification() {
    _firebaseMessaging.requestNotificationPermissions();
    _firebaseMessaging.configure(onMessage: _onMessage);
  }

  static Future<dynamic> _onMessage(Map<String, dynamic> message) async {
    print(message);
    return;
  }
}
