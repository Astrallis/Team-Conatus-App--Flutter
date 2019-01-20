import 'package:flutter/material.dart';

import '../utils/constants.dart';

class Coordinator extends StatelessWidget {
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Flex(
      direction: Axis.vertical,
      children: <Widget>[
        Expanded(
          child: Stack(
            children: <Widget>[
              Container(
                height: deviceHeight,
                child: Container(
                  width: deviceWidth,
                  margin: EdgeInsets.only(
                      top: Dimensions.coordinatorBackgroundHeight +
                          Dimensions.avatarRadius),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Naimish verma",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize:
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: Dimensions.coordinatorBackgroundHeight,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/coordinator-bg.png"),
                      fit: BoxFit.cover),
                ),
              ),
              Positioned(
                child: CircleAvatar(
                  radius: Dimensions.avatarRadius,
                  backgroundColor: Color(ConatusColors.lightTransparent),
                ),
                left: (deviceWidth / 2) - Dimensions.avatarRadius,
                top: Dimensions.coordinatorBackgroundHeight -
                    Dimensions.avatarRadius,
              )
            ],
          ),
        )
      ],
    );
  }
}
