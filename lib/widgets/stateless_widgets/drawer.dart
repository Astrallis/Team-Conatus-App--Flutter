import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class ConatusDrawer extends StatelessWidget {
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 20.0,
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text(
              "CONATUS..",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            decoration: BoxDecoration(color: Theme.of(context).accentColor),
          ),
          ListTile(
            title: Text("HOME"),
            onTap: () {},
          ),
          ListTile(
            title: Text("GALLERY"),
            onTap: () {},
          ),
          ListTile(
            title: Text("FACULTY CO-ORDINATORS"),
            onTap: () {},
          ),
          ListTile(
            title: Text("STUDENT CO-ORDINATORS"),
            onTap: () {},
          ),
          ListTile(
            title: Text("EVENTS"),
            onTap: () {},
          ),
          ListTile(
            title: Text("CONTACT US"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
