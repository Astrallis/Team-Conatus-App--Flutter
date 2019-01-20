import 'package:flutter/material.dart';

class Coordinator extends StatelessWidget {
  final double topWidgetHeight = 200.0;
  final double avatarRadius = 65.0;

  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: topWidgetHeight,
          color: Colors.yellow,
        ),
        Container(
          height: topWidgetHeight,
          color: Colors.red,
        ),
        Positioned(
          child: CircleAvatar(
            radius: avatarRadius,
            backgroundColor: Colors.green,
          ),
          left: (MediaQuery.of(context).size.width / 2) - avatarRadius,
          top: topWidgetHeight - avatarRadius,
        )
      ],
    );
  }
}
