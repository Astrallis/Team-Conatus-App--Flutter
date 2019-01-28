import 'package:flutter/src/widgets/framework.dart';

import './container_page.dart';
import '../widgets/contact.dart';
import '../utils/constants.dart';

class ContactPage extends ContainerPage {
  static const String _PAGE_TITLE = "Contact-Us";

  @override
  String getAppBarTitle() {
    return _PAGE_TITLE;
  }

  @override
  Widget getContentWidget() {
    return Contact();
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