import 'package:flutter/material.dart';
import 'package:tattomaster/components/customTextInput.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
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
      body: Container(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .4,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://staticmapmaker.com/img/cartodb_placeholder.png"),
                      fit: BoxFit.cover
                    )
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          onPressed: () => Navigator.pop(context),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * .6,
                          child: customTextInput(_controller, "Location", Icons.my_location, Icons.search)
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                color: Colors.white,
              ),
              //height: 50,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "Masters", 
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                          )
                        ),
                      ),
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.black
                        ),
                        child: Center(
                          child: Text(
                            "12", 
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            )
                          ),
                        )
                      ),
                      Spacer(),
                      Icon(Icons.tune)
                    ]
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              'https://api.adorable.io/avatars/285/abott@adorable.png',
                              width: 100,
                              height: 100,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Diego Soria Rios"),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.location_on),
                                  Text("Location"),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    color: Colors.grey[200],
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.star, color: Colors.grey[400]),
                                        Text("5.00", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[400]))
                                      ],
                                    ),
                                  ),
                                  //Spacer(),
                                  Text("Reviews 100")
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  // TODO: LIST
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}