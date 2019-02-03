import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import '../widgets/appbar.dart';
import '../utils/toast.dart';

abstract class ContainerPage extends StatelessWidget {
// Abstract methods
  String getAppBarTitle();

  Widget getContentWidget();

  bool showDrawer();

  int getAppBarColor();

  static int count = 0;

  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        if (count == 0) {
          count++;
          Toast.showToast(message: "Press again to exit!");
          return Future.value(false);
        } else {
          count = 0;
          return Future.value(true);
        }
      },
      child: Scaffold(
        drawer: showDrawer() ? ConatusDrawer() : null,
        body: Stack(
          children: <Widget>[
            getContentWidget(),
            ConatusAppBar(
                appBarTitle: getAppBarTitle(),
                showDrawer: showDrawer(),
                appBarColor: getAppBarColor())
          ],
        ),
      ),
    );
  }
}
