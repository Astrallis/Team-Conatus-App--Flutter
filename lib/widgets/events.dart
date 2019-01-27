import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../utils/constants.dart';
import '../models/event.dart';
import '../data/event_data.dart';

class Events extends StatelessWidget {
  final List<Event> _events = EventData.eventsData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Dimensions.appBarHeight),
      decoration: BoxDecoration(
        color: Color(ConatusColors.silver),
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: List.generate(
          _events.length,
          (index) {
            return Container(
              padding: EdgeInsets.all(5.0),
              child: Card(
                elevation: 10.0,
                child: Container(
                  padding:
                      EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 270.0,
                        child: CachedNetworkImage(
                          imageUrl: _events[index].imageUrl,
                          placeholder: Center(
                            child: Text("Loading Image..."),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Dimensions.gap,
                      ),
                      Center(
                        child: Text(
                          _events[index].name,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: ConatusFonts.small),
                        ),
                      ),
                      SizedBox(
                        height: Dimensions.gap,
                      ),
                      Center(
                        child: Text(
                          _events[index].description,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: ConatusFonts.extraSmall),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
