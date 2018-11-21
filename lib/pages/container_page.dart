import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

abstract class ContainerPage extends StatelessWidget {
// Abstract methods
  String getAppBarTitle();
  Widget getContentWidget();

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(getAppBarTitle()),
      ),
      body: getContentWidget(),
    ));
  }
}
