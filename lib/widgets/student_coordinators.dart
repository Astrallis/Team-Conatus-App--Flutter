import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../utils/constants.dart';
import '../models/coordinator.dart';
import '../data/coordinators_data.dart';
import './conatus_button.dart';

class StudentCoordinators extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StudentState();
  }
}

class StudentState extends State {
  CoordinatorsData data = CoordinatorsData();
  String _message = "Loading...";
  var _subscription;
  int _count = 0;

  initState() {
    _loadCoordinators();
  }

  dispose() {
    if (_subscription != null) {
      _subscription.cancel();
    }
    super.dispose();
  }

  Widget build(BuildContext context) {
    final double statusbarHeight = MediaQuery.of(context).padding.top;
    if (_message == "Loading...")
      return Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Image.asset(
                  "assets/images/conatus2.png",
                  scale: 3.5,
                ),
              ),
              SizedBox(
                height: Dimensions.gap,
              ),
              Center(
                child: FadingText("Loading Coordinators..."),
              )
            ]),
      );
    else if (_message == "Success") {
      List<Coordinator> _coordinator = CoordinatorsData.coordinators;

      return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/c-bg.jpeg"), fit: BoxFit.cover),
        ),
        margin: EdgeInsets.only(top: Dimensions.appBarHeight + statusbarHeight),
        padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(_coordinator.length, (index) {
            return Container(
                padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 3.0),
                child: GestureDetector(
                  onTap: () {
                    CoordinatorsData.setSelectedCoordinator(
                        _coordinator[index]);
                    Navigator.pushNamed(context, RouterConstants.coordinator);
                  },
                  child: Card(
                    elevation: 5.0,
                    color: Color(ConatusColors.darkTransparent),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                              Dimensions.avatarRadius * 0.80),
                          child: CachedNetworkImage(
                            placeholder: Center(
                              child: Text(
                                "Loading Image...",
                                style: TextStyle(fontSize: ConatusFonts.least),
                              ),
                            ),
                            imageUrl: _coordinator[index].imageUrl,
                            width: Dimensions.avatarRadius * 1.6,
                            height: Dimensions.avatarRadius * 1.6,
                          ),
                        ),
                        SizedBox(height: Dimensions.gap / 1.5),
                        Text(
                          _coordinator[index].name,
                          style: TextStyle(fontSize: ConatusFonts.extraSmall),
                        )
                      ],
                    ),
                  ),
                ));
          }),
        ),
      );
    } else {
      return Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "Something went wrong...",
            style: TextStyle(fontSize: ConatusFonts.small),
          ),
          SizedBox(
            height: Dimensions.gap * 3,
          ),
          Container(
            width: 200,
            child: ConatusButton(text: "Reload", onClick: _loadCoordinators),
          ),
        ],
      ));
    }
  }

  _loadCoordinators() {
    if (!CoordinatorsData.isLoaded) {
      _subscription = data.fetchCoordinators().stream.listen((message) {
        if (_count > 0) {
          setState(() {
            _message = message;
          });
        }
        _count++;
      });
    } else
      _message = "Success";
  }
}
