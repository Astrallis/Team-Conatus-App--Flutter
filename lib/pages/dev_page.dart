import 'package:flutter/src/widgets/framework.dart';

import './container_page.dart';
import '../utils/constants.dart';
import '../widgets/dev.dart';

class DevPage extends ContainerPage {
  static const String _PAGE_TITLE = "Development Team";

  @override
  String getAppBarTitle() {
    return _PAGE_TITLE;
  }

  @override
  Widget getContentWidget() {
    return Devs();
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