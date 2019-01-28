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
    const errorMessage = "No internet connection...";
    const successMessage = "No internet connection...";
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none) {
        Toast.showToast(message: errorMessage);
      } else {
        Toast.showToast(message: successMessage);
      }
    });
  }
}
