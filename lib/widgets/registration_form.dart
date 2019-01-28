import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:dson/dson.dart';
import 'package:progress_indicators/progress_indicators.dart';

import './conatus_button.dart';
import './dialog.dart';
import '../utils/constants.dart';
import '../utils/auth_service.dart';
import '../utils/validators.dart';
import '../models/student.dart';

class RegistrationForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegistrationFormState();
  }
}

class RegistrationFormState extends State {
  static const String _API_URL =
      "https://conatus-application-backend.herokuapp.com/api/register";
  static final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  String _name;
  String _email;
  String _stdno;
  String _phno;
  String _rollno;
  String _branch;
  BuildContext _context;
  bool _isLoading = false;
  ConatusAuth _auth = ConatusAuth.instance;

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
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(hintText: "Branch"),
              validator: Validators.validateNotNull,
              onSaved: (branch) {
                this._branch = branch;
              },
            ),
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
              height: Dimensions.gap * 2,
            ),
            _isLoading
                ? Center(
                    child: FadingText('Loading...'),
                  )
                : SizedBox(),
            SizedBox(
              height: Dimensions.gap * 3,
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
    String _message;
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save(); // Save our form now.
      Student student = Student(
          name: this._name,
          email: this._email,
          studentNumber: this._stdno,
          rollNumber: this._rollno,
          contactNumber: this._phno,
          branch: this._branch);
      setState(() {
        _isLoading = true;
      });

//      String data = objectToSerializable(student);
      _auth.post(url: _API_URL, body: {
        "name": this._name,
        "email": this._email,
        "student_number": this._stdno,
        "roll_number": this._rollno,
        "contact_number": this._phno,
        "branch": this._branch
      }).then((res) {
        setState(() {
          _isLoading = false;
          _formKey.currentState.reset();
          Map response = Map.from(res.body);
          if(response["data"] !=null){
            _message = "You are registered successfully!!";
          }
          print("Response"+res.body.toString());
          showDialog(
            context: _context,
            barrierDismissible: false,
            builder: (BuildContext context) => CDialog(
              message: _message,
            ),
          );
        });
      });
      print('Printing the login data.');

    }
  }
}