import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

abstract class ContainerPage extends StatelessWidget {
// Abstract methods
  String getAppBarTitle();

  Widget getContentWidget();

  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Colors.blue,
            accentColor: Colors.cyan),
        home: Scaffold(
          drawer: Drawer(
            elevation: 20.0,
            child: new ListView(
              children: <Widget>[
                new DrawerHeader(
                  child: new Text("DRAWER HEADER.."),
                  decoration:
                      new BoxDecoration(color: Theme.of(context).accentColor),
                ),
                new ListTile(
                  title: new Text("Item => 1"),
                  onTap: () {},
                ),
                new ListTile(
                  title: new Text("Item => 2"),
                  onTap: () {},
                ),
              ],
            ),
          ),
          appBar: AppBar(
            title: Text(getAppBarTitle()),
          ),
          body: getContentWidget(),
        ));
  }
}
