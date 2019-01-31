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
        duration: const Duration(milliseconds: 4000), vsync: this);
    _animation = Tween(begin: 250.0, end: 380.0).animate(_animationController)
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
  dispose(){
    this._animationController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
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
              Image.asset("assets/images/team.jpg"),
              SizedBox(
                height: Dimensions.gap * 3,
              ),
              Text(
                "About Us",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: ConatusFonts.medium),
              ),
              SizedBox(
                height: Dimensions.gap * 2,
              ),
              Text(
                _ABOUT,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: ConatusFonts.small),
              )
            ],
          ),
        ),
      ),
    );
  }
}
