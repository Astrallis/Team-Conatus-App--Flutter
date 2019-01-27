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
      padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: List.generate(4, (index) {
          return Container(
            height: ConatusUtils.getCardRadius(deviceWidth) * 2,
            child: Card(
              color: Color(ConatusColors.lightTransparent),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              margin: EdgeInsets.symmetric(horizontal: 35.0, vertical: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: Dimensions.avatarRadius*2,
                    width: Dimensions.avatarRadius*2,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(faculty[index].profileUrl),
                        fit: BoxFit.fill
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(Dimensions.avatarRadius),
                      ),
                    ),
                  ),
                  SizedBox(height: Dimensions.gap * 2),
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
