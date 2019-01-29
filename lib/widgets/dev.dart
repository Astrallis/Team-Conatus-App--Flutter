import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import '../models/dev.dart';
import '../data/dev_data.dart';
import '../utils/constants.dart';
import '../utils/conatus_utils.dart';

class Devs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final List<Dev> devs = DevData.devData;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/dev-bg.jpg"), fit: BoxFit.cover),
      ),
      margin: EdgeInsets.only(top: Dimensions.appBarHeight),
      padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: List.generate(devs.length, (index) {
          return Container(
            height: ConatusUtils.getCardRadius(deviceWidth) * 2,
            child: Card(
              elevation: 5.0,
              color: Color(ConatusColors.darkTransparent),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              margin: EdgeInsets.symmetric(horizontal: 35.0, vertical: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: Dimensions.avatarRadius*2.5,
                    width: Dimensions.avatarRadius*2.5,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(devs[index].imageUrl),
                          fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(Dimensions.avatarRadius*1.5),
                      ),
                    ),
                  ),
                  SizedBox(height: Dimensions.gap * 2),
                  Center(
                    child: Text(
                      devs[index].name,
                      style: TextStyle(fontSize: ConatusFonts.medium),
                    ),
                  ),
                  SizedBox(height: Dimensions.gap),
                  Center(
                    child: Text(
                      devs[index].tech,
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
