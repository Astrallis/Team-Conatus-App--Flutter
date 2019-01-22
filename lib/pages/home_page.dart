import 'package:flutter/src/widgets/framework.dart';

import './container_page.dart';
import '../widgets/home.dart';
import '../utils/constants.dart';

class HomePage extends ContainerPage {
  static const String _PAGE_TITLE = "Home";

  @override
  String getAppBarTitle() {
    return _PAGE_TITLE;
  }

  @override
  Widget getContentWidget() {
    return Home();
  }

  @override
  bool showDrawer() {
    return true;
  }

  @override
  int getAppBarColor() {
    return ConatusColors.colorPrimary;
  }

}
