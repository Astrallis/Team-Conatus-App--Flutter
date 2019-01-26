import 'package:flutter/material.dart';

import '../utils/constants.dart';
import './tagline.dart';

class Home extends StatelessWidget {
  static const String _ABOUT =
      """Leading the technical upfront, Conatus is the Computer Science and Information Technology society of Ajay Kumar Garg Engineering College. "Conatus" means "impulsive force" as it brings the students to the unexplored "technical horizon" within their grasp. Conatus stands on the objective of guiding the students towards the dawn of a better and successful tomorrow with its marvellous events, workshops, seminars and classes for the students of the college to thrive towards a brighter and a technically sound future.""";

  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return Container(
      height: _height,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/home-bg.png"), fit: BoxFit.cover),
      ),
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 120.0),
          padding: EdgeInsets.all(Dimensions.gap),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage("assets/images/conatua-text.png"),
                height: 90,
              ),
              SizedBox(
                height: Dimensions.gap,
              ),
              Tagline(),
              SizedBox(
                height: Dimensions.gap * 3,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, RouterConstants.registration);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(ConatusColors.colorPrimary),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Color(ConatusColors.colorPrimary),
                        blurRadius: 13.0,
                      ),
                    ],
                    borderRadius: BorderRadius.all(
                      Radius.circular(Dimensions.buttonRadius),
                    ),
                  ),
                  width: _width / 2,
                  height: Dimensions.buttonHeight,
                  alignment: Alignment(0.0, 0.0),
                  padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 3.0),
                  child: Text(
                    "Register for C classes",
                    style: TextStyle(fontSize: ConatusFonts.small),
                  ),
                ),
              ),
              SizedBox(
                height: Dimensions.gap * 3,
              ),
              Text(
                _ABOUT,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: ConatusFonts.small),
              )
            ],
          ),
        ),
      ),
    );
  }
}
