import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import '../../utils/constants.dart';

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
            onTap: () {
              Navigator.pushNamed(context, RouterConstants.home);
            },
          ),
          ListTile(
            title: Text("GALLERY"),
            onTap: () {
              Navigator.pushNamed(context, RouterConstants.gallery);
            },
          ),
          ListTile(
            title: Text("FACULTY CO-ORDINATORS"),
            onTap: () {
              Navigator.pushNamed(
                  context, RouterConstants.faculty_coordinators);
            },
          ),
          ListTile(
            title: Text("STUDENT CO-ORDINATORS"),
            onTap: () {
              Navigator.pushNamed(
                  context, RouterConstants.student_coordinators);
            },
          ),
          ListTile(
            title: Text("EVENTS"),
            onTap: () {
              Navigator.pushNamed(context, RouterConstants.events);
            },
          ),
          ListTile(
            title: Text("CONTACT US"),
            onTap: () {
              Navigator.pushNamed(context, RouterConstants.contact_us);
            },
          ),
        ],
      ),
    );
  }
}
