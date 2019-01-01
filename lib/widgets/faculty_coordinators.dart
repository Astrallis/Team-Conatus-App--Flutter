import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class FacultyCoordinators extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: List.generate(4, (index) {
          return Container(
            height:350.0,
            padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 3.0),
            child: Card(
              margin:EdgeInsets.symmetric(horizontal: 50.0,vertical: 20.0),
              elevation: 5.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset("assets/images/user.png"),
                  Container(height: 50.0),
                  Center(child: Text("Coordinator")),
                  Center(child: Text("4th year"))
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
