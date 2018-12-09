import 'package:flutter/src/widgets/framework.dart';

import './container_page.dart';
import '../widgets/stateless_widgets/faculty_coordinators.dart';

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
}
