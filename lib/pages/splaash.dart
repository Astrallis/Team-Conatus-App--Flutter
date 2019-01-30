import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:splashscreen/splashscreen.dart';

import '../pages/home_page.dart';
import '../utils/connection.dart';

class SplaashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Connection.setUpConnectionListener();
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.fromLTRB(60, 210, 0, 0),
        height: 300,
        width: 300,
        child: SplashScreen(
            seconds: 6,
            navigateAfterSeconds: HomePage(),
//          image: new Image.asset("assets/images/logo-gif.gif",width:600.0,),
            imageBackground: AssetImage("assets/images/logo-gif.gif"),
            backgroundColor: Colors.black,
            styleTextUnderTheLoader: new TextStyle(),
            photoSize: 80.0,
            loaderColor: Colors.black),
      ),
    );
  }
}
