import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  var data;

  ProfileScreen({this.data});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
        //margin: EdgeInsets.only(top: 50),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .4,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      //image: NetworkImage("https://avatars1.githubusercontent.com/u/24478606?v=4"),
                      image: NetworkImage(widget.data.avatar),
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
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.more_horiz),
                          //onPressed: () => Navigator.pop(context),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.person),
                          //onPressed: () => Navigator.pop(context),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  )
                ),
                
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("${widget.data.name}", style: TextStyle(fontWeight: FontWeight.bold)),
                      Text("${widget.data.reviews}")
                    ]
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.location_on),
                      Text("${widget.data.location.name}")
                    ],
                  )
                  // TODO: LIST
                ],
              )
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {}, 
        label: Text("BOOK"),
        backgroundColor: Colors.black,
      ),
    );
  }
}