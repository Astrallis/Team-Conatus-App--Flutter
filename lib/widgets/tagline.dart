import 'package:flutter/widgets.dart';

import '../utils/constants.dart';

class Tagline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Learn",
          style: TextStyle(fontSize: ConatusFonts.medium),
        ),
        SizedBox(width: Dimensions.gap),
        Image.asset("assets/images/circle.png"),
        SizedBox(width: Dimensions.gap),
        Text(
          "Improvise",
          style: TextStyle(fontSize: ConatusFonts.medium),
        ),
        SizedBox(width: Dimensions.gap),
        Image.asset("assets/images/circle.png"),
        SizedBox(width: Dimensions.gap),
        Text(
          "Grow",
          style: TextStyle(fontSize: ConatusFonts.medium),
        ),
      ],
    );
  }
}
