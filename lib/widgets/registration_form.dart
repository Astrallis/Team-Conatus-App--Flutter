import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'dart:convert';

import './conatus_button.dart';
import './dialog.dart';
import '../utils/constants.dart';
import '../utils/auth_service.dart';
import '../utils/validators.dart';

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
  String _name1;
  String _email1;
  String _stdno1;
  String _phno1;
  String _rollno1;
  String _branch1;
  String _year1;
  String _gender1;
  String _address1;
  String _name2;
  String _email2;
  String _stdno2;
  String _phno2;
  String _rollno2;
  String _branch2;
  String _year2;
  String _gender2;
  String _address2;
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
        color: Color(ConatusColors.ddarkTransparent),
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Team Member 1",
              style: TextStyle(fontSize: ConatusFonts.small),
            ),
            SizedBox(
              height: Dimensions.gap,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(hintText: "Name"),
              validator: Validators.validateStringField,
              onSaved: (name) {
                this._name1 = name;
              },
            ),
            SizedBox(
              height: Dimensions.gap * 2,
            ),
            DropdownButtonFormField(
              items: getBranch(),
              value: _branch1,
              validator: Validators.validateNotNull,
              onChanged: (String value) {
                setState(() {
                  this._branch1 = value;
                });
              },
              decoration: InputDecoration(hintText: "Branch"),
              onSaved: (branch) {
                this._branch1 = branch;
              },
            ),
            SizedBox(
              height: Dimensions.gap * 2,
            ),
            DropdownButtonFormField(
              items: getYear(),
              value: _year1,
              validator: Validators.validateNotNull,
              onChanged: (String value) {
                setState(() {
                  this._year1 = value;
                });
              },
              decoration: InputDecoration(hintText: "Year"),
              onSaved: (branch) {
                this._year1 = branch;
              },
            ),
            SizedBox(
              height: Dimensions.gap * 2,
            ),
            DropdownButtonFormField(
              items: getAvailablity(),
              value: _address1,
              onChanged: (String value) {
                setState(() {
                  this._address1 = value;
                });
              },
              validator: Validators.validateNotNull,
              decoration: InputDecoration(hintText: "Hostler/Day Scholar"),
              onSaved: (value) {
                this._address1 = value;
              },
            ),
            SizedBox(
              height: Dimensions.gap * 2,
            ),
            DropdownButtonFormField(
              items: getGender(),
              value: _gender1,
              onChanged: (String value) {
                setState(() {
                  this._gender1 = value;
                });
              },
              validator: Validators.validateNotNull,
              decoration: InputDecoration(hintText: "Gender"),
              onSaved: (value) {
                this._gender1 = value;
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
                this._stdno1 = stdNo;
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
                this._rollno1 = rollNo;
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
                this._email1 = email;
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
                this._phno1 = contact;
              },
            ),
            SizedBox(
              height: Dimensions.gap * 2,
            ),
            Text(
              "Team Member 2",
              style: TextStyle(fontSize: ConatusFonts.small),
            ),
            SizedBox(
              height: Dimensions.gap,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(hintText: "Name"),
              validator: Validators.validateStringField,
              onSaved: (name) {
                this._name2 = name;
              },
            ),
            SizedBox(
              height: Dimensions.gap * 2,
            ),
            DropdownButtonFormField(
              items: getBranch(),
              value: _branch2,
              validator: Validators.validateNotNull,
              onChanged: (String value) {
                setState(() {
                  this._branch2 = value;
                });
              },
              decoration: InputDecoration(hintText: "Branch"),
              onSaved: (branch) {
                this._branch2 = branch;
              },
            ),
            SizedBox(
              height: Dimensions.gap * 2,
            ),
            DropdownButtonFormField(
              items: getYear(),
              value: _year2,
              validator: Validators.validateNotNull,
              onChanged: (String value) {
                setState(() {
                  this._year2 = value;
                });
              },
              decoration: InputDecoration(hintText: "Year"),
              onSaved: (branch) {
                this._year2 = branch;
              },
            ),
            SizedBox(
              height: Dimensions.gap * 2,
            ),
            DropdownButtonFormField(
              items: getAvailablity(),
              value: _address2,
              onChanged: (String value) {
                setState(() {
                  this._address2 = value;
                });
              },
              validator: Validators.validateNotNull,
              decoration: InputDecoration(hintText: "Hostler/Day Scholar"),
              onSaved: (value) {
                this._address2 = value;
              },
            ),
            SizedBox(
              height: Dimensions.gap * 2,
            ),
            DropdownButtonFormField(
              items: getGender(),
              value: _gender2,
              onChanged: (String value) {
                setState(() {
                  this._gender2 = value;
                });
              },
              validator: Validators.validateNotNull,
              decoration: InputDecoration(hintText: "Gender"),
              onSaved: (value) {
                this._gender2 = value;
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
                this._stdno2 = stdNo;
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
                this._rollno2 = rollNo;
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
                this._email2 = email;
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
                this._phno2 = contact;
              },
            ),
            _isLoading
                ? Center(
                    child: FadingText('Submitting...'),
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
    String _isHostler1;
    String _isHostler2;
    int _year1;
    int _year2;
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save(); // Save our form now.
      setState(() {
        _isLoading = true;
      });
      if (_address1 == "Hostler") {
        _isHostler1 = "hostler";
      } else {
        _isHostler1 = "day_scholar";
      }
      if (_address2 == "Hostler") {
        _isHostler2 = "hostler";
      } else {
        _isHostler2 = "day_scholar";
      }
      if (this._year1 == "1st") {
        _year1 = 1;
      } else if (this._year1 == "2nd") {
        _year1 = 2;
      } else if (this._year1 == "3rd") {
        _year1 = 3;
      } else {
        _year1 = 4;
      }
      if (this._year2 == "1st") {
        _year2 = 1;
      } else if (this._year2 == "2nd") {
        _year2 = 2;
      } else if (this._year2 == "3rd") {
        _year2 = 3;
      } else {
        _year2 = 4;
      }

      _auth.post(url: _API_URL, body: {
        "name": this._name1,
        "email": this._email1,
        "student_number": this._stdno1,
        "roll_number": this._rollno1,
        "contact_number": this._phno1,
        "branch": this._branch1,
        "is_hostler": _isHostler1,
        "gender": this._gender1,
        "year": _year1,
        "name_sec": this._name2,
        "email_sec": this._email2,
        "student_number_sec": this._stdno2,
        "roll_number_sec": this._rollno2,
        "contact_number_sec": this._phno2,
        "branch_sec": this._branch2,
        "is_hostler_sec": _isHostler2,
        "gender_sec": this._gender2,
        "year_sec": _year2
      }).then((res) {
        setState(() {
          _isLoading = false;
          Map response = json.decode(res.body);
          if (response["data"] != null) {
            _message =
                "You are registered successfully, please check your email!!";
            _formKey.currentState.reset();
            this._address1 = null;
            this._address2 = null;
            this._branch1 = null;
            this._branch2 = null;
            this._gender1 = null;
            this._gender2 = null;
            this._year1 = null;
            this._year2 = null;
          } else if (response["status_code"] != null) {
            if (response["errors"]["email"] != null) {
              _message = "Team member 1 email already exists!!";
            }
            if (response["errors"]["student_number"] != null) {
              _message = "Team member 1 student number already exists!!";
            }
            if (response["errors"]["roll_number"] != null) {
              _message = "Team member 1 roll number already exists!!";
            }
            if (response["errors"]["email_sec"] != null) {
              _message = "Team member 2 email already exists!!";
            }
            if (response["errors"]["student_number_sec"] != null) {
              _message = "Team member 2 student number already exists!!";
            }
            if (response["errors"]["roll_number_sec"] != null) {
              _message = "Team member 2 roll number already exists!!";
            }
          }
          showDialog(
            context: _context,
            barrierDismissible: false,
            builder: (BuildContext context) => CDialog(
                  message: _message,
                ),
          );
        });
      });
    }
  }

  List<DropdownMenuItem<String>> getBranch() {
    return <String>["CSE", "IT", "ME", "EN", "EI", "CE", "EC"].map((value) {
      return DropdownMenuItem(
        value: value,
        child: Text(value),
      );
    }).toList();
  }

  List<DropdownMenuItem<String>> getAvailablity() {
    return <String>["Hostler", "Day Scholar"].map((value) {
      return DropdownMenuItem(
        value: value,
        child: Text(value),
      );
    }).toList();
  }

  List<DropdownMenuItem<String>> getYear() {
    return <String>["1st", "2nd", "3rd", "4th"].map((value) {
      return DropdownMenuItem(
        value: value,
        child: Text(value),
      );
    }).toList();
  }

  List<DropdownMenuItem<String>> getGender() {
    return <String>["Male", "Female"].map((value) {
      return DropdownMenuItem(
        value: value,
        child: Text(value),
      );
    }).toList();
  }
}
