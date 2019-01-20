import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ConatusAppBar extends StatelessWidget {
  final String appBarTitle;
  final bool showDrawer;

  ConatusAppBar({@required this.appBarTitle, @required this.showDrawer}) {}

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    return Container(
      height: deviceHeight / 2 * 0.23,
      padding: EdgeInsets.only(top: 15.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/appbar.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        children: <Widget>[
          Container(width: 15.0),
          GestureDetector(
            child: showDrawer
                ? Image.asset("assets/images/menu.png")
                : Image.asset("assets/images/back.png"),
            onTap: () {
              if (showDrawer) {
                Scaffold.of(context).openDrawer();
              } else {
                // Checks wheather the current route can pe popped out or not
                if (ModalRoute.of(context).canPop) {
                  Navigator.of(context).pop();
                }
                ;
              }
            },
          ),
          Container(width: 35.0),
          Text(
            appBarTitle,
            style: TextStyle(
                fontSize: 28.0,
                letterSpacing: 1.2,
                fontWeight: FontWeight.w400,
                fontFamily: "Ubuntu"),
          )
        ],
      ),
    );
  }
}
