import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../utils/constants.dart';
import '../utils/conatus_enums.dart';
import '../models/coordinator.dart' as C;
import '../data/coordinators_data.dart';
import './tagline.dart';

class Coordinator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    C.Coordinator _coordinator = CoordinatorsData.selectedCoordinator;
    String year;
    if (_coordinator.year == Year.second) {
      year = "2nd";
    } else if (_coordinator.year == Year.third) {
      year = "3rd";
    } else {
      year = "4th";
    }
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/lts.png"), fit: BoxFit.cover),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: Dimensions.gap * 6,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(Dimensions.avatarRadius * 1.5),
            child: CachedNetworkImage(
              fit: BoxFit.fill,
              imageUrl: _coordinator.imageUrl,
              width: Dimensions.avatarRadius * 2.3,
              height: Dimensions.avatarRadius * 2.3,
            ),
          ),
          SizedBox(
            height: Dimensions.gap * 3,
          ),
          Text(
            _coordinator.name,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: ConatusFonts.large),
          ),
          SizedBox(height: Dimensions.gap),
          Text(
            """Coordinator ${year} Year""",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: ConatusFonts.small),
          ),
          SizedBox(height: Dimensions.gap * 2),
          Text(
            _coordinator.description,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: ConatusFonts.extraSmall),
          ),
          SizedBox(height: Dimensions.gap * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/images/email.png",
                width: 22.0,
                height: 22.0,
              ),
              SizedBox(width: Dimensions.gap),
              Text(
                _coordinator.email,
                style: TextStyle(fontSize: ConatusFonts.extraSmall),
              )
            ],
          ),
          SizedBox(height: Dimensions.gap * 4),
          Tagline(),
        ],
      ),
    );
  }
}
