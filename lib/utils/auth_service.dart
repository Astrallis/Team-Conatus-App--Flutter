import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

class ConatusAuth {
  // Singleton instance of the class, means only one object will be used throughout the app

  static final ConatusAuth _authSingleton = new ConatusAuth._internal();

  ConatusAuth._internal();

  static ConatusAuth get instance => _authSingleton;

  Future get({@required url, data = ""}) {
    Map<String, String> options = {"params": data};
    return http.get(url, headers: options).catchError(handleError);
  }

  Future post({@required url, body}) {
    return http.post("url", body: body).catchError(handleError);
  }

  handleError(error) {
    http.Response response = http.Response(error.toString(), 404);
    return response;
  }
}
