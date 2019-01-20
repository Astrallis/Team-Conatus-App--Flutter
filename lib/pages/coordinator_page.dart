import 'package:flutter/src/widgets/framework.dart';

import './container_page.dart';
import '../widgets/coordinator.dart';
import '../utils/constants.dart';

class CoordinatorPage extends ContainerPage{

  @override
  String getAppBarTitle() {
    return null;
  }

  @override
  Widget getContentWidget() {
    return Coordinator();
  }

  @override
  bool showDrawer() {
    return false;
  }

  @override
  int getAppBarColor() {
    return ConatusColors.lightTransparent;
  }

}