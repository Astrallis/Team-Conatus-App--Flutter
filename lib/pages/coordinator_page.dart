import 'package:flutter/src/widgets/framework.dart';

import './container_page.dart';
import '../widgets/coordinator.dart';

class CoordinatorPage extends ContainerPage{
  static const _PAGE_TITLE = "Coordinator";

  @override
  String getAppBarTitle() {
    return _PAGE_TITLE;
  }

  @override
  Widget getContentWidget() {
    return Coordinator();
  }

  @override
  bool showAppBar() {
    return false;
  }

  @override
  bool showDrawer() {
    return false;
  }

}