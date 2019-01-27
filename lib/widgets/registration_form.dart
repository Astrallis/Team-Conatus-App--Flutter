import 'package:flutter/widgets.dart';

class RegistrationForm extends StatelessWidget {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
          key: this._formKey,
          child: Column(
            children: <Widget>[],
          )),
    );
  }
}
