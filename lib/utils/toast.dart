import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import './constants.dart';

class Toast {
  static showToast({@required String message}) {
    Fluttertoast.showToast(
        msg: message,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        backgroundColor: Color(ConatusColors.colorPrimary),
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
