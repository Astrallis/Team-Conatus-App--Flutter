import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../utils/constants.dart';
import '../utils/conatus_utils.dart';
import '../models/faculty.dart';
import '../data/faculty_data.dart';

class FacultyCoordinators extends StatelessWidget {
  Widget build(BuildContext context) {
    final double statusbarHeight = MediaQuery.of(context).padding.top;
    final double deviceWidth = MediaQuery.of(context).size.width;
    final List<Faculty> faculty = FacultyData.facultiesData;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/college.png"), fit: BoxFit.cover),
      ),
      margin: EdgeInsets.only(top: Dimensions.appBarHeight+statusbarHeight),
      padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: List.generate(faculty.length, (index) {
          return Container(
            height: ConatusUtils.getCardRadius(deviceWidth) * 2,
            child: Card(
              color: Color(ConatusColors.darkTransparent),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              margin: EdgeInsets.symmetric(horizontal: 35.0, vertical: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ClipRRect(
                    borderRadius:
                        BorderRadius.circular(Dimensions.avatarRadius * 1.5),
                    child: CachedNetworkImage(
                        fit: BoxFit.fill,
                        imageUrl: faculty[index].profileUrl,
                        width: Dimensions.avatarRadius * 2.3,
                        height: Dimensions.avatarRadius * 2.3,
                        placeholder: Center(
                          child: Text(
                            "Loading Image...",
                            style: TextStyle(fontSize: ConatusFonts.least),
                          ),
                        )),
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
