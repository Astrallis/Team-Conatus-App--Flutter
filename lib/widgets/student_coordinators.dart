import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';

class StudentCoordinators extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Dimensions.appBarHeight),
      padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0.0),
      child: GridView.count(
        crossAxisCount: 2,
        children: List.generate(20, (index) {
          return Container(
              padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 3.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, RouterConstants.coordinator);
                },
                child: Card(
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
              ));
        }),
      ),
    );
  }
}
