import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import '../widgets/stateless_widgets/drawer.dart';
import '../utils/constants.dart';
import '../page_exports.dart';

abstract class ContainerPage extends StatelessWidget {
// Abstract methods
  String getAppBarTitle();

  Widget getContentWidget();

  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: RouterConstants.home,
        theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Colors.blue,
            accentColor: Colors.cyan),
        home: Scaffold(
          drawer: ConatusDrawer(),
          appBar: AppBar(
            title: Text(getAppBarTitle()),
          ),
          body: getContentWidget(),
        ));
  }
}
