import 'package:flutter/src/widgets/framework.dart';

import './container_page.dart';
import '../utils/constants.dart';
import '../widgets/events.dart';

class EventsPage extends ContainerPage {
  static const String _PAGE_TITLE = "Events";

  @override
  String getAppBarTitle() {
    return _PAGE_TITLE;
  }

  @override
  Widget getContentWidget() {
    return Events();
  }

  @override
  bool showDrawer(){
    return true;
  }

  @override
  int getAppBarColor() {
    return ConatusColors.colorPrimary;
  }
}