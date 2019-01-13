import 'package:scoped_model/scoped_model.dart';
import '../utils/auth_service.dart';
import '../models/coordinator.dart';

class CoordinatorsData extends Model {
  static const String apiUrl = "https://conatus-app.firebaseio.com";
  ConatusAuth auth = ConatusAuth.instance;

  List<Coordinator> _coordinators;

  List<Coordinator> get coordinators => _coordinators;

  fetchCoordinators() {
    this.auth.get(url: '${apiUrl}/coordinators.json').then((coordinator) {});
  }
}
