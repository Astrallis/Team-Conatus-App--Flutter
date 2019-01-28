import '../models/coordinator.dart';
import './conatus_enums.dart';

class ConatusUtils {
  static orderList(List<Coordinator> list) {
    List<Coordinator> _secondYear = new List();
    List<Coordinator> _thirdYear = new List();
    List<Coordinator> _fourthYear = new List();

    list.forEach((coordinator) {
      if (coordinator.year == Year.fourth)
        _fourthYear.add(coordinator);
      else if (coordinator.year == Year.third)
        _thirdYear.add(coordinator);
      else
        _secondYear.add(coordinator);
    });
    _fourthYear = sortList(_fourthYear);
    _thirdYear = sortList(_thirdYear);
    _secondYear = sortList(_secondYear);
    List<Coordinator> _finalList = []
      ..addAll(_fourthYear)
      ..addAll(_thirdYear)
      ..addAll(_secondYear);
    return _finalList;
  }

  static sortList(List<Coordinator> list) {
    list.sort((first, second) {
      return first.name.compareTo(second.name);
    });
    return list;
  }

  static double getCardRadius(double deviceWidth) {
    final cardWidth = deviceWidth - 70;
    return cardWidth / 2;
  }
}
