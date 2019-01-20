import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import '../widgets/appbar.dart';

abstract class ContainerPage extends StatelessWidget {
// Abstract methods
  String getAppBarTitle();

  Widget getContentWidget();

  bool showDrawer();

  bool showAppBar();

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: showDrawer() ? ConatusDrawer() : null,
//      body: Column(
//        children: <Widget>[
//          showAppBar()
//              ? ConatusAppBar(
//                  appBarTitle: getAppBarTitle(), showDrawer: showDrawer())
//              : Container(),
//          Expanded(child: getContentWidget())
//        ],
//      ),
      body: Stack(
        children: <Widget>[
          getContentWidget(),
          showAppBar()
              ? ConatusAppBar(
                  appBarTitle: getAppBarTitle(), showDrawer: showDrawer())
              : Container()
        ],
      ),
    );
  }
}
