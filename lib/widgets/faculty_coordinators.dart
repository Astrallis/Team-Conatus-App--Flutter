import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/conatus_utils.dart';
import '../models/faculty.dart';
import '../data/faculty_data.dart';

class FacultyCoordinators extends StatelessWidget {
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final List<Faculty> faculty = FacultyData.facultiesData;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/college.png"), fit: BoxFit.cover),
      ),
      margin: EdgeInsets.only(top: Dimensions.appBarHeight),
      padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: List.generate(4, (index) {
          return Container(
            height: ConatusUtils.getCardRadius(deviceWidth) * 2,
            padding: EdgeInsets.symmetric(horizontal: 3.0),
            child: Card(
              color: Color(ConatusColors.lightTransparent),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              margin: EdgeInsets.symmetric(horizontal: 35.0, vertical: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: Dimensions.avatarRadius,
                    backgroundImage: AssetImage(faculty[index].profileUrl),
                  ),
                  Container(height: 50.0),
                  Center(
                    child: Text(
                      faculty[index].name,
                      style: TextStyle(fontSize: ConatusFonts.medium),
                    ),
                  ),
                  Center(
                    child: Text(
                      faculty[index].position,
                      style: TextStyle(fontSize: ConatusFonts.small),
                    ),
                  ),
                  Center(
                    child: Text(
                      faculty[index].department,
                      style: TextStyle(fontSize: ConatusFonts.small),
                    ),
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
