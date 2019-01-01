import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import '../widgets/drawer.dart';

abstract class ContainerPage extends StatelessWidget {
// Abstract methods
  String getAppBarTitle();

  Widget getContentWidget();

  bool showDrawer();

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: showDrawer() ? ConatusDrawer() : null,
      appBar: AppBar(
        title: Text(getAppBarTitle()),
      ),
      body: getContentWidget(),
    );
  }
}
