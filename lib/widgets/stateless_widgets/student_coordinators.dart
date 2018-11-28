import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class StudentCoordinators extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
        child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(20, (index) {
              return Container(
                padding: EdgeInsets.fromLTRB(3,4,3,4),
                  child: Card(
                      elevation: 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset("assets/images/user.png"),
                          Container(height: 50),
                          Center(child: Text("Coordinator")),
                          Center(child: Text("4th year"))
                        ],
                      )));
            })));
  }
}
