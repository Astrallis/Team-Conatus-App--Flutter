import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/constants.dart';

class ConatusAppBar extends StatelessWidget {
  final String appBarTitle;
  final bool showDrawer;
  final int appBarColor;

  ConatusAppBar(
      {this.appBarTitle = "",
      @required this.showDrawer,
      this.appBarColor = 0}) {}

  @override
  Widget build(BuildContext context) {
    final double statusbarHeight = MediaQuery.of(context).padding.top;
    return Container(
      height: Dimensions.appBarHeight + statusbarHeight,
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
                ? Image.asset(
                    "assets/images/menu.png",
                    width: Dimensions.iconsWidth,
                    height: Dimensions.iconsHeight,
                  )
                : Image.asset(
                    "assets/images/back.png",
                    width: Dimensions.iconsWidth,
                    height: Dimensions.iconsHeight,
                  ),
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
                fontSize: ConatusFonts.medium,
                letterSpacing: 1.2,
                fontWeight: FontWeight.w400,
                fontFamily: "Ubuntu"),
          )
        ],
      ),
    );
  }
}
