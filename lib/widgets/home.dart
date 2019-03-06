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
      "Conatus is the technical society of Computer Science and Information Technology in Ajay Kumar Garg Engineering College which brings to its students the illumination of the knowledge glow in IT sphere with its marvellous events, workshops and seminars. Founded on 10th October, 2005 Conatus’ functioning is firmly supported by HOD of CSE department, Dr. Sunita Yadav. In the last decade, Conatus has evolved as a technical base for its own members as well as the rest of the college. It has brought to the students the vast unexplored “technical horizon” within their grasp hold. Besides being the first technical society of AKGEC, Conatus leads the technological upfront by organising a wide range of activities throughout the year.";
  Animation _animation;
  AnimationController _animationController;

  initState() {
    super.initState();
    _animationController = AnimationController(
        duration: const Duration(milliseconds: 5000), vsync: this);
    _animation = Tween(begin: 250.0, end: 350.0).animate(_animationController)
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

  dispose() {
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
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  _ABOUT,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: ConatusFonts.small),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
