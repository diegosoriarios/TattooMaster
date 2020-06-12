import 'package:flutter/material.dart';
import 'package:tattomaster/screens/home.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Tatoo Master", style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            )),
            Text("Find your master wherever you are.\nWorldwide community.", style: TextStyle(
              fontSize: 16
            )),
            FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text("GET STARTED", style: TextStyle(color: Colors.white)),
              color: Colors.black,
              onPressed: () => Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (BuildContext context) => HomeScreen()))
            )
          ],
        ),
      ),
    );
  }
}