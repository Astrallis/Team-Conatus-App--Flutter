import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import '../utils/constants.dart';

class ConatusDrawer extends StatelessWidget {
  static const double _ICON_SIZE = 22.0;

  Widget build(BuildContext context) {
    return Drawer(
      elevation: 20.0,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage("assets/images/drawer-background.png"),
              fit: BoxFit.cover),
        ),
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Image.asset("assets/images/conatus.png"),
            ),
            Container(
              height: 0.4,
              decoration: BoxDecoration(color: Colors.white),
            ),
            ListTile(
              leading: Image.asset(
                "assets/images/home.png",
                width: _ICON_SIZE,
                height: _ICON_SIZE,
              ),
              title: Text("Home", style: _getTextStyle()),
              onTap: () {
                _navigate(context, RouterConstants.home);
              },
            ),
            _getContainer(),
            ListTile(
              leading: Image.asset(
                "assets/images/event.png",
                width: _ICON_SIZE,
                height: _ICON_SIZE,
              ),
              title: Text("Events", style: _getTextStyle()),
              onTap: () {
                _navigate(context, RouterConstants.events);
              },
            ),
            _getContainer(),
            ListTile(
              leading: Image.asset(
                "assets/images/student.png",
                width: _ICON_SIZE,
                height: _ICON_SIZE,
              ),
              title: Text("Student Coordinators", style: _getTextStyle()),
              onTap: () {
                _navigate(context, RouterConstants.student_coordinators);
              },
            ),
            _getContainer(),
            ListTile(
              leading: Image.asset(
                "assets/images/faculty.png",
                width: _ICON_SIZE,
                height: _ICON_SIZE,
              ),
              title: Text("Faculty Coordinators", style: _getTextStyle()),
              onTap: () {
                _navigate(context, RouterConstants.faculty_coordinators);
              },
            ),
            _getContainer(),
            ListTile(
              leading: Image.asset(
                "assets/images/gallery.png",
                width: _ICON_SIZE,
                height: _ICON_SIZE,
              ),
              title: Text("Gallery", style: _getTextStyle()),
              onTap: () {
                _navigate(context, RouterConstants.gallery);
              },
            ),
            _getContainer(),
            ListTile(
              leading: Image.asset(
                "assets/images/contact.png",
                width: _ICON_SIZE,
                height: _ICON_SIZE,
              ),
              title: Text("Contact Us", style: _getTextStyle()),
              onTap: () {
                _navigate(context, RouterConstants.contact_us);
              },
            ),
            _getContainer(),
            ListTile(
              leading: Image.asset(
                "assets/images/code.png",
                width: _ICON_SIZE,
                height: _ICON_SIZE,
              ),
              title: Text("Development Team", style: _getTextStyle()),
              onTap: () {
                _navigate(context, RouterConstants.dev);
              },
            ),
            _getContainer(),
          ],
        ),
      ),
    );
  }

  Widget _getContainer() {
    return Container(
      height: 0.2,
      margin: EdgeInsets.only(left: 65.0, top: 7.0),
      decoration: BoxDecoration(color: Colors.white),
    );
  }

  TextStyle _getTextStyle() {
    return TextStyle(
        fontSize: ConatusFonts.small,
        letterSpacing: 1.2,
        fontWeight: FontWeight.w300,
        fontFamily: "Ubuntu");
  }

  void _navigate(BuildContext context, String route) {
    if (context == null || route == null) {
      return;
    }
    Navigator.pop(context);
    Navigator.pushNamed(context, route);
  }
}
