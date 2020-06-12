import 'package:flutter/material.dart';
import 'package:tattomaster/screens/home.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Stack(
              children: <Widget>[
                Positioned(
                  right: 0,
                  child: Image.asset("assets/illustrations/07.png",
                    width: MediaQuery.of(context).size.width * .6,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Tatoo Master", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 48,
                    )),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Text("Find your master wherever you are.\nWorldwide community.", style: TextStyle(
                        fontSize: 16
                      )),
                    ),
                    FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text("GET STARTED", style: TextStyle(color: Colors.white)),
                      ),
                      color: Colors.black,
                      onPressed: () => Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (BuildContext context) => HomeScreen()))
                    )
                  ],
                ),
                Positioned(
                  bottom: 0,
                  child: Image.asset("assets/illustrations/10.png",
                    width: MediaQuery.of(context).size.width * .6,
                  ),
                )
              ],
            ),
      ),
    );
  }
}