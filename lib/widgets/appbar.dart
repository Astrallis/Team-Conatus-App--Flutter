import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/constants.dart';

class ConatusAppBar extends StatelessWidget {
  final String appBarTitle;
  final bool showDrawer;
  final int appBarColor;

  ConatusAppBar(
      {@required this.appBarTitle = "",
      @required this.showDrawer,
      this.appBarColor = 0}) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.appBarHeight,
      padding: EdgeInsets.only(top: 15.0),
      decoration: BoxDecoration(
          color: appBarColor == 0
              ? Color(ConatusColors.colorPrimary)
              : Color(appBarColor)),
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
              }
            },
          ),
          SizedBox(width: Dimensions.gap * 3.5),
          Text(
            appBarTitle != null ? appBarTitle : "",
            style: TextStyle(
                fontSize: ConatusFonts.large,
                letterSpacing: 1.2,
                fontWeight: FontWeight.w400,
                fontFamily: "Ubuntu"),
          )
        ],
      ),
    );
  }
}
