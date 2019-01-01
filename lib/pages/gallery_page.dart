import 'package:flutter/src/widgets/framework.dart';

import './container_page.dart';
import '../widgets/gallery.dart';

class GalleryPage extends ContainerPage {
  static const String _PAGE_TITLE = "Gallery";

  @override
  String getAppBarTitle() {
    return _PAGE_TITLE;
  }

  @override
  Widget getContentWidget() {
    return Gallery();
  }

  @override
  bool showDrawer(){
    return true;
  }
}