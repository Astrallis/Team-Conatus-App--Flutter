class Validators {
  static String validateEmail(String email) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(email))
      return "Enter Valid Email";
    else
      return null;
  }

  static String validateStudentNumber(String stdNo) {
    if (stdNo.isEmpty || (stdNo != null && stdNo.length != 7)) {
      return "Enter a valid student number";
    }
    return null;
  }

  static String validatePhno(String phno) {
    if (phno.isEmpty || (phno != null && phno.length != 10)) {
      return "Enter a valid phone number";
    }
    return null;
  }

  static String validateRollno(String rollno) {
    if (rollno.isEmpty || (rollno != null && rollno.length != 10)) {
      return "Enter a valid roll number";
    }
    return null;
  }

  static String validateNotNull(String value) {
    if (value.isEmpty) {
      return "Field cannot be empty";
    }
    return null;
  }

  static String validateStringField(String value) {
    if (value.isEmpty || _isNumeric(value)) {
      return "This field is invalid";
    }
    return null;
  }

  static  bool _isNumeric(String str) {
    if(str == null) {
      return false;
    }
    return double.tryParse(str) != null;
  }
}
