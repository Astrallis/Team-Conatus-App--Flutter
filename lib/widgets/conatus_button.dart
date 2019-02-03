import 'package:flutter/widgets.dart';

import '../utils/constants.dart';

class ConatusButton extends StatelessWidget {
  final String text;
  final Function onClick;

  ConatusButton({@required this.text, @required this.onClick}) {}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onClick,
      child: Container(
        decoration: BoxDecoration(
          color: Color(ConatusColors.colorPrimary),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color(ConatusColors.colorPrimary),
              blurRadius: 5.0,
            ),
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(Dimensions.buttonRadius),
          ),
        ),
        height: Dimensions.buttonHeight,
        alignment: Alignment(0.0, 0.0),
        padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 3.0),
        child: Text(
          text,
          style: TextStyle(fontSize: ConatusFonts.small),
        ),
      ),
    );
  }
}
