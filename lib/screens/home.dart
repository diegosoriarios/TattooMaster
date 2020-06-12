import 'package:flutter/material.dart';
import 'package:tattomaster/components/customTextInput.dart';
import 'package:tattomaster/screens/map.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _controller;

  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ClipRRect(
                  child: Image.network(
                    'https://api.adorable.io/avatars/285/abott@adorable.png',
                    width: 50,
                    height: 50,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                Spacer(flex: 1),
                RichText(text: TextSpan(
                  children: [
                    TextSpan(text: "Hello ", style: TextStyle(color: Colors.black)),
                    TextSpan(text: "Diego!", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black))
                  ]
                )),
                Spacer(flex: 3),
                Icon(Icons.bookmark)
              ],
            ),
            Spacer(),
            Text("Find your tattoo master", style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 48
            )),
            Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * .6,
                  child: customTextInput(_controller, "Location", null, Icons.search)
                ),
                IconButton(
                  icon: Icon(Icons.my_location),
                  onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (BuildContext context) => MapScreen())),
                )
              ],
            ),
            Spacer(),
            Row(
              children: <Widget>[
                Text("Pick of the Week", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24
                )),
                FlatButton(child: Text("View all"), onPressed: () {})
              ],
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        child: Image.network(
                          'https://api.adorable.io/avatars/285/abott@adorable.png',
                          width: MediaQuery.of(context).size.width * .25,
                          height: MediaQuery.of(context).size.width * .25,
                        ),
                      ),
                      SizedBox(height: 2),
                      Container(
                        child: Image.network(
                          'https://api.adorable.io/avatars/285/abott@adorable.png',
                          width: MediaQuery.of(context).size.width * .25,
                          height: MediaQuery.of(context).size.width * .25,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    child: Image.network(
                      'https://api.adorable.io/avatars/285/abott@adorable.png',
                      width: MediaQuery.of(context).size.width * .5,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}