import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import './conatus_button.dart';
import './dialog.dart';
import '../utils/constants.dart';
import '../utils/validators.dart';

class RegistrationForm extends StatelessWidget {
  static final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  String _name;
  String _email;
  String _stdno;
  String _phno;
  String _rollno;
  String _branch;
  BuildContext _context;

  @override
  Widget build(BuildContext context) {
    this._context = context;
    return Container(
      margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
      padding: EdgeInsets.all(10.0),
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
              validator: Validators.validateNotNull,
              onSaved: (name) {
                this._name = name;
              },
            ),
            SizedBox(
              height: Dimensions.gap * 2,
            ),
//            DropdownButtonFormField(
//              decoration: InputDecoration(hintText: "Branch"),
//              items: this.getBranches(),
//              onSaved: (branch) {
//                this._branch = branch;
//              },
//            ),
            SizedBox(
              height: Dimensions.gap * 2,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Student No"),
              validator: Validators.validateStudentNumber,
              onSaved: (stdNo) {
                this._stdno = stdNo;
              },
            ),
            SizedBox(
              height: Dimensions.gap * 2,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Roll No"),
              validator: Validators.validateRollno,
              onSaved: (rollNo) {
                this._rollno = rollNo;
              },
            ),
            SizedBox(
              height: Dimensions.gap * 2,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(hintText: "Email"),
              validator: Validators.validateEmail,
              onSaved: (email) {
                this._email = email;
              },
            ),
            SizedBox(
              height: Dimensions.gap * 2,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Contact No"),
              validator: Validators.validatePhno,
              onSaved: (contact) {
                this._phno = contact;
              },
            ),
            SizedBox(
              height: Dimensions.gap * 4,
            ),
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
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save(); // Save our form now.
      print('Printing the login data.');
      showDialog(
        context: _context,
        barrierDismissible: false,
        builder: (BuildContext context) => CDialog(
              message: "OK",
            ),
      );
    }
  }

  List<DropdownMenuItem> getBranches() {
    List<String> branches = ["CSE", "IT", "ME", "EC", "EN", "EI", "CE"];
    branches.map((branch) {
      return DropdownMenuItem(
        value: branch,
        child: Text(branch),
      );
    });
  }
}
