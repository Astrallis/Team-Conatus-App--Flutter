import 'package:connectivity/connectivity.dart';
import './toast.dart';

class Connection {
  static getConnectionStatus() async {
    ConnectivityResult connectivityResult =
        await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      return false;
    }
    return true;
  }

  static setUpConnectionListener() {
    int _count = 0;
    const errorMessage = "No internet connection...";
    const successMessage = "Connected...";
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none) {
        Toast.showToast(message: errorMessage);
        _count++;
      } else {
        if (_count > 0) {
          Toast.showToast(message: successMessage);
        }
        _count++;
      }
    });
  }
}
