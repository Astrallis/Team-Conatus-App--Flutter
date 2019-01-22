
class ConatusUtils {
  static orderList(List list) {
    return List.from(null);
  }

  static sortList(List list) {
    list.sort((first, second) {
      return first.toString().compareTo(second.toString());
    });
    return list;
  }

  static double getCardRadius(double deviceWidth) {
    final cardWidth = deviceWidth - 70;
    print(cardWidth/2);
    return cardWidth/2;
  }

}
