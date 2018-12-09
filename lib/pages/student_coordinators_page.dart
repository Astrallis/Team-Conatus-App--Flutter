import 'package:flutter/src/widgets/framework.dart';

import './container_page.dart';
import '../widgets/stateless_widgets/student_coordinators.dart';

class StudentCoordinatorsPage extends ContainerPage {
  static const String _PAGE_TITLE = "Student Co-ordinators";

  @override
  String getAppBarTitle() {
    return _PAGE_TITLE;
  }

  @override
  Widget getContentWidget() {
    return StudentCoordinators();
  }
}
