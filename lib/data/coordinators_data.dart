import 'dart:convert';
import 'package:rxdart/subjects.dart';
import '../utils/auth_service.dart';
import '../models/coordinator.dart';
import '../utils/conatus_enums.dart';
import '../utils/conatus_utils.dart';

class CoordinatorsData {
  static const String _API_URL = "https://conatusinfo-8341f.firebaseio.com";
  ConatusAuth auth = ConatusAuth.instance;
  static Coordinator _selectedCoordinator;
  static bool _isLoaded = false;

  static List<Coordinator> _coordinators = new List();

  static List<Coordinator> get coordinators => _coordinators;

  static Coordinator get selectedCoordinator => _selectedCoordinator;

  static setSelectedCoordinator(Coordinator c) {
    _selectedCoordinator = c;
  }

  static bool get isLoaded => _isLoaded;

  BehaviorSubject<String> fetchCoordinators() {
    BehaviorSubject<String> subject = new BehaviorSubject();
    subject.add("Loading...");
    this.auth.get(url: '${_API_URL}/coordinator.json').then((response) {
      if (response.statusCode == 404) {
        print("Error" + response.body);
        return subject.add(response.body);
      }
      Map<String, dynamic> res = json.decode(response.body);
      res.keys.forEach((key) {
        String y = res[key]["year"];
        Year year;
        if (y == "0")
          year = Year.second;
        else if (y == "1")
          year = Year.third;
        else
          year = Year.fourth;
        _coordinators.add(new Coordinator(
            year: year,
            name: res[key]["name"],
            email: res[key]["email"],
            description: res[key]["description"],
            imageUrl: res[key]["image_link"],
            facebookUrl: res[key]["facebook_url"],
            instagramUrl: res[key]["instagram_url"],
            linkedinUrl: res[key]["linkedIn_url"],
            githubUrl: res[key]["github_link"]));
      });
      _coordinators = ConatusUtils.orderList(_coordinators);
      _isLoaded = true;
      return subject.add("Success");
    });
    return subject;
  }
}
