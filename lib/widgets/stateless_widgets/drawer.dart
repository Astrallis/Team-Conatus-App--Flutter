import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class ConatusDrawer extends StatelessWidget {
  Widget build(BuildContext context) {
    void _navigate(String routePath) {
      print(routePath);
    }

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
            onTap: () {
              _navigate("home");
            },
          ),
          ListTile(
            title: Text("GALLERY"),
            onTap: () {
              _navigate("gallery");
            },
          ),
          ListTile(
            title: Text("FACULTY CO-ORDINATORS"),
            onTap: () {
              _navigate("faculty-coordinators");
            },
          ),
          ListTile(
            title: Text("STUDENT CO-ORDINATORS"),
            onTap: () {
              _navigate("student-coordinators");
            },
          ),
          ListTile(
            title: Text("EVENTS"),
            onTap: () {
              _navigate("events");
            },
          ),
          ListTile(
            title: Text("CONTACT US"),
            onTap: () {
              _navigate("contact-us");
            },
          ),
        ],
      ),
    );
  }
}
