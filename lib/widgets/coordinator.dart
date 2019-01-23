import '../utils/constants.dart';
import 'package:flutter/material.dart';

class Coordinator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/lts.png"), fit: BoxFit.cover),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: Dimensions.gap * 6,
          ),
          CircleAvatar(
            radius: Dimensions.avatarRadius,
            backgroundImage: AssetImage("assets/images/avatar.jpeg"),
          ),
          SizedBox(
            height: Dimensions.gap * 3,
          ),
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
          SizedBox(height: Dimensions.gap * 2),
          Text(
            "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sed dolor vero tenetur saepe voluptatum temporibus totam cupiditate quae amet Sit veniam pariatur saepe ipsam ad numquam dignissimos sint architecto in Lorem ipsum dolor sit amet consectetur, Sed dolor vero tenetur saepe voluptatum tempo ribadipisicing m dolor sit amet consectetur, adipisicing elit.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: ConatusFonts.extraSmall),
          ),
          SizedBox(height: Dimensions.gap * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/images/facebook.png"),
              SizedBox(width: Dimensions.gap * 2),
              Image.asset("assets/images/instagram.png"),
              SizedBox(width: Dimensions.gap * 2),
              Image.asset("assets/images/linkedin.png"),
              SizedBox(width: Dimensions.gap * 2),
              Image.asset("assets/images/github.png")
            ],
          ),
          SizedBox(height: Dimensions.gap * 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Learn",
                style: TextStyle(fontSize: ConatusFonts.extraSmall),
              ),
              SizedBox(width: Dimensions.gap),
              Text(
                "Improvise",
                style: TextStyle(fontSize: ConatusFonts.extraSmall),
              ),
              SizedBox(width: Dimensions.gap),
              Text(
                "Grow",
                style: TextStyle(fontSize: ConatusFonts.extraSmall),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
