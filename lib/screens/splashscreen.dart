import 'dart:math';

import 'package:drawing_animation/drawing_animation.dart';
import 'package:flutter/material.dart';
import 'package:tattomaster/screens/welcome.dart';

class Splash extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
 
class _SplashScreenState extends State<Splash> {
 bool run = true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * .5,
          child: Column(
          children: <Widget>[
            Expanded(
              child: AnimatedDrawing.svg(
                "assets/animation/design.svg",
                run: this.run,
                duration: new Duration(seconds: 4),
                lineAnimation: LineAnimation.oneByOne,
                animationCurve: Curves.linear,
                onFinish: () {
                  setState(() {
                    this.run = false;
                  });
                  navigateToHomeScreen();
                }
              )
            ),
          ]
        )
        ),
      ),
    );
  }
 
  void navigateToHomeScreen() {
    /// Push home screen and replace (close/exit) splash screen.
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }
}