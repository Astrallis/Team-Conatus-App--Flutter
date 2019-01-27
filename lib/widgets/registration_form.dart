import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import '../models/student.dart';
import './conatus_button.dart';
import '../utils/constants.dart';

class RegistrationForm extends StatelessWidget {
  static final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  String _name;
  String _email;
  String _stdno;
  String _phno;
  String _rollno;
  String _branch;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Color(ConatusColors.darkTransparent),
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(hintText: "Name"),
              onSaved: (name) {
                this._name = name;
              },
            ),
            SizedBox(height: Dimensions.gap*2,),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(hintText: "Branch"),
              onSaved: (branch) {
                this._branch = branch;
              },
            ),
            SizedBox(height: Dimensions.gap*2,),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Student No"),
              onSaved: (stdNo) {
                this._stdno = stdNo;
              },
            ),
            SizedBox(height: Dimensions.gap*2,),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Roll No"),
              onSaved: (rollNo) {
                this._rollno = rollNo;
              },
            ),
            SizedBox(height: Dimensions.gap*2,),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(hintText: "Email"),
              onSaved: (email) {
                this._email = email;
              },
            ),
            SizedBox(height: Dimensions.gap*2,),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Contact No"),
              onSaved: (contact) {
                this._phno = contact;
              },
            ),
            SizedBox(height: Dimensions.gap*4,),
            ConatusButton(
              text: "Submit Details",
              onClick: _submitForm,
            )
          ],
        ),
      ),
    );
  }

  void _submitForm() {
    _formKey.currentState.save();
    print("Name: " + this._name);
    print("Std no: " + this._stdno);
  }
}
