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
                          Dimensions.avatarRadius +
                          Dimensions.gap),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Naimish verma",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: ConatusFonts.large),
                      ),
                      SizedBox(height: Dimensions.gap),
                      Text(
                        "Coordinator 3rd Year",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: ConatusFonts.small),
                      ),
                      SizedBox(height: Dimensions.gap*2),
                      Text(
                        "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sed dolor vero tenetur saepe voluptatum temporibus totam cupiditate quae amet Sit veniam pariatur saepe ipsam ad numquam dignissimos sint architecto in Lorem ipsum dolor sit amet consectetur, Sed dolor vero tenetur saepe voluptatum tempo ribadipisicing m dolor sit amet consectetur, adipisicing elit.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: ConatusFonts.extraSmall),
                      ),
                      SizedBox(height: Dimensions.gap*3),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset("assets/images/facebook.png"),
                          SizedBox(width: Dimensions.gap*2),
                          Image.asset("assets/images/instagram.png"),
                          SizedBox(width: Dimensions.gap*2),
                          Image.asset("assets/images/linkedin.png"),
                          SizedBox(width: Dimensions.gap*2),
                          Image.asset("assets/images/github.png")
                        ],
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
