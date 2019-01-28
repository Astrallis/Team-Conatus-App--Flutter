import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../utils/constants.dart';
import '../models/coordinator.dart' as C;
import '../data/coordinators_data.dart';
import './tagline.dart';

class Coordinator extends StatelessWidget {
  _launchURL(String url) async {
    try {
      if (await canLaunch(url)) {
        await launch(url, forceWebView: true, forceSafariVC: true);
      } else {
        throw 'Could not launch $url';
      }
    } catch (Ex) {
      print(Ex);
    }
  }

  @override
  Widget build(BuildContext context) {
    C.Coordinator _coordinator = CoordinatorsData.selectedCoordinator;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
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
            borderRadius: BorderRadius.circular(Dimensions.avatarRadius*1.5),
            child: CachedNetworkImage(
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
            "Coordinator 3rd Year",
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
              GestureDetector(
                onTap: () {
                  _launchURL(_coordinator.facebookUrl);
                },
                child: Image.asset(
                  "assets/images/facebook.png",
                  width: Dimensions.iconsWidth,
                  height: Dimensions.iconsHeight,
                ),
              ),
              SizedBox(width: Dimensions.gap * 2),
              GestureDetector(
                onTap: () {
                  _launchURL(_coordinator.instagramUrl);
                },
                child: Image.asset(
                  "assets/images/instagram.png",
                  width: Dimensions.iconsWidth,
                  height: Dimensions.iconsHeight,
                ),
              ),
              SizedBox(
                width: Dimensions.gap * 2,
              ),
              GestureDetector(
                onTap: () {
                  _launchURL(_coordinator.linkedinUrl);
                },
                child: Image.asset(
                  "assets/images/linkedin.png",
                  width: Dimensions.iconsWidth,
                  height: Dimensions.iconsHeight,
                ),
              ),
              SizedBox(width: Dimensions.gap * 2),
              GestureDetector(
                onTap: () {
                  _launchURL(_coordinator.githubUrl);
                },
                child: Image.asset(
                  "assets/images/github.png",
                  width: Dimensions.iconsWidth,
                  height: Dimensions.iconsHeight,
                ),
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
