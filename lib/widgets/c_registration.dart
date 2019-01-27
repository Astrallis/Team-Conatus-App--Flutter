import 'package:flutter/widgets.dart';

import './registration_form.dart';

class CRegistration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    final double _height = MediaQuery.of(context).size.height;

    return Container(
      height: _height,
      width: _width,
      margin: EdgeInsets.only(top: 100),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/register-bg.jpeg"),
            fit: BoxFit.cover,repeat: ImageRepeat.noRepeat),
      ),
        child: RegistrationForm(),

    );
  }
}
