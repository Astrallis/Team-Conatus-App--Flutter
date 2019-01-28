import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

import '../utils/constants.dart';
import './tagline.dart';
import './conatus_button.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  static const String _ABOUT =
      """Leading the technical upfront, Conatus is the Computer Science and Information Technology society of Ajay Kumar Garg Engineering College. "Conatus" means "impulsive force" as it brings the students to the unexplored "technical horizon" within their grasp. Conatus stands on the objective of guiding the students towards the dawn of a better and successful tomorrow with its marvellous events, workshops, seminars and classes for the students of the college to thrive towards a brighter and a technically sound future.""";
  static const String _BUTTON_TEXT = "Register for C classes";
  Animation _animation;
  AnimationController _animationController;

  initState() {
    super.initState();
    _animationController = AnimationController(
        duration: const Duration(milliseconds: 3500), vsync: this);
    _animation = Tween(begin: 250.0, end: 300.0).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animationController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _animationController.forward();
      }
    });
    _animationController.forward();
  }

  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return Container(
      height: _height,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/home-bg.png"), fit: BoxFit.cover),
      ),
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 120.0),
          padding: EdgeInsets.all(Dimensions.gap),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 100.0,
                child: Image(
                  image: AssetImage("assets/images/conatua-text.png"),
                  height: _animation.value / 3,
                  width: _animation.value,
                ),
              ),
              SizedBox(
                height: Dimensions.gap,
              ),
              Tagline(),
              SizedBox(
                height: Dimensions.gap * 3,
              ),
              ConatusButton(text: _BUTTON_TEXT, onClick: _onClick),
              SizedBox(
                height: Dimensions.gap * 3,
              ),
              Text(
                _ABOUT,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: ConatusFonts.small),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _onClick() {
    Navigator.pushNamed(context, RouterConstants.registration);
  }
}
