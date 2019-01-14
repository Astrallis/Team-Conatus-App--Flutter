import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ConatusAppBar extends StatelessWidget {
  final String appBarTitle;

  ConatusAppBar({@required this.appBarTitle}) {}

  @override
  Widget build(BuildContext context) {
    double divheight = MediaQuery.of(context).size.height;
    return Container(
      height: divheight / 2 * 0.23,
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
            child: Image.asset("assets/images/menu.png"),
            onTap: () {
              print(key.toString());
              Scaffold.of(context).openDrawer();
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
