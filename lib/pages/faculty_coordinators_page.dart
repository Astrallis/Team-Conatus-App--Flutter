import 'package:flutter/src/widgets/framework.dart';

import './container_page.dart';
import '../widgets/faculty_coordinators.dart';

class FacultyCoordinatorsPage extends ContainerPage {
  static const String _PAGE_TITLE = "Faculty Co-ordinators";

  @override
  String getAppBarTitle() {
    return _PAGE_TITLE;
  }

  @override
  Widget getContentWidget() {
    return FacultyCoordinators();
  }

  @override
  bool showDrawer(){
    return true;
  }

  @override
  bool showAppBar() {
    return true;
  }
}
