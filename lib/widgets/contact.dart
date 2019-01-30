import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/conatus_utils.dart';

class Contact extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/home-bg.png"),
              fit: BoxFit.cover),
        ),
        child: new SingleChildScrollView(
          child: new Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(100, 80, 100, 0),
                child: Image.asset(
                  "assets/images/contactus.png",
                  height: 200,
                  width: 200,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                color: Color(ConatusColors.ddarkTransparent),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      child: Text(
                        "Call us on:  7007799127 , 8751244551",
                        style: TextStyle(fontSize: ConatusFonts.small),
                        textAlign: TextAlign.center,
                      ),
                      padding: EdgeInsets.all(15.0),
                    ),
                    Padding(
                      child: Text(
                        "Email: conatus.akgec2016@gmail.com",
                        style: TextStyle(fontSize: ConatusFonts.small),
                        textAlign: TextAlign.center,
                      ),
                      padding: EdgeInsets.only(bottom: 15.0),
                    ),
                    Padding(
                      child: Text(
                        "Address: Ajay Kumar Garg Engineering College, Ghaziabad, Hapur Bypass, U.P, PIN: 201009",
                        style: TextStyle(fontSize: ConatusFonts.small),
                        textAlign: TextAlign.center,
                      ),
                      padding: EdgeInsets.only(left: 35.0, right: 35.0),
                    ),
                    Padding(
                      child: Image.asset(
                        "assets/images/m1.png",
                        scale: 3,
                      ),
                      padding: EdgeInsets.all(15.0),
                    ),
                    Container(height: 0.0),
                  ],
                ),
              ),
              Container(
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      child: Image.asset(
                        "assets/images/fb.png",
                        scale: 10,
                      ),
                      padding: EdgeInsets.fromLTRB(0, 5, 0, 15),
                    ),
                    Padding(
                      child: Text(
                        "www.facebook.com/conatus.akg",
                        style: TextStyle(fontSize: ConatusFonts.small),
                      ),
                      padding: EdgeInsets.fromLTRB(5, 5, 0, 15),
                    ),
                  ],
                ),
              ),
              Container(
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      child: Image.asset(
                        "assets/images/insta.png",
                        scale: 12,
                      ),
                      padding: EdgeInsets.fromLTRB(0, 2, 0, 15),
                    ),
                    Padding(
                      child: Text(
                        "www.instagram.com/conatus.akg",
                        style: TextStyle(fontSize: ConatusFonts.small),
                      ),
                      padding: EdgeInsets.fromLTRB(5, 2, 0, 15),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
