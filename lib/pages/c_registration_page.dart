import 'package:flutter/src/widgets/framework.dart';

import './container_page.dart';
import '../widgets/c_registration.dart';
import '../utils/constants.dart';

class CRegistrationPage extends ContainerPage {
  static const String _PAGE_TITLE = "Register";

  @override
  String getAppBarTitle() {
    return _PAGE_TITLE;
  }

  @override
  Widget getContentWidget() {
    return CRegistration();
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
