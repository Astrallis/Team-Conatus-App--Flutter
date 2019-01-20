import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import '../widgets/appbar.dart';

abstract class ContainerPage extends StatelessWidget {
// Abstract methods
  String getAppBarTitle();

  Widget getContentWidget();

  bool showDrawer();

  int getAppBarColor();

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: showDrawer() ? ConatusDrawer() : null,
      body: Stack(
        children: <Widget>[
          getContentWidget(),
          ConatusAppBar(
              appBarTitle: getAppBarTitle(),
              showDrawer: showDrawer(),
              appBarColor:getAppBarColor())
        ],
      ),
    );
  }
}
