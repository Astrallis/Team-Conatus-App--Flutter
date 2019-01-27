import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CDialog extends StatelessWidget {
  final String message;

  CDialog({@required this.message}) {}

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Message"),
      content: SingleChildScrollView(
        child: Text(message),
      ),
      actions: <Widget>[
        FlatButton(
          child: Text("OK"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
    ;
  }
}
