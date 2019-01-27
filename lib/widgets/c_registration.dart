import 'package:flutter/widgets.dart';

import './registration_form.dart';
import '../utils/constants.dart';

class CRegistration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    final double _height = MediaQuery.of(context).size.height;

    return Container(
      height: _height,
      width: _width,
      margin: EdgeInsets.only(top: Dimensions.appBarHeight),
      padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 20.0),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/register-bg.jpeg"),
            fit: BoxFit.fill,repeat: ImageRepeat.noRepeat),
      ),
        child: SingleChildScrollView(
          child: RegistrationForm(),
        ),

    );
  }
}
