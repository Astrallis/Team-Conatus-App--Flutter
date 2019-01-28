import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scoped_model/scoped_model.dart';

import '../data/scoped_model/root.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return ScopedModel<RootModel>(
      model: RootModel(),
      child: Scaffold(
        body: Container(
          width: _width,
          height: _height,
          decoration: BoxDecoration(color: Colors.black),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/images/logo-gif.gif"),
              ScopedModelDescendant<RootModel>(
                builder: (context, child, model) {
                  model.fetchCoordinators();
                  return SizedBox();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
