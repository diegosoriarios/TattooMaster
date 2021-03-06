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
                        RawMaterialButton(
                          onPressed: () => Navigator.pop(context),
                          elevation: 2.0,
                          fillColor: Colors.white,
                          child: Icon(Icons.arrow_back_ios),
                          padding: EdgeInsets.all(15.0),
                          shape: CircleBorder(),
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.more_horiz, color: Colors.white),
                          //onPressed: () => Navigator.pop(context),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.person, color: Colors.white),
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
                      Text(
                        "${widget.data.name}", 
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32
                        )
                      ),
                      Container(
                        color: Colors.grey[200],
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.star, color: Colors.grey[400]),
                            Text("${widget.data.reviews}", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[400]))
                          ],
                        ),
                      ),
                    ]
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.location_on),
                      Text("${widget.data.location.name}")
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .4,
                    child: flatList()
                  )
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

  Widget flatList() {
    var data = widget.data.tattoos;

    return Container(
      height: MediaQuery.of(context).size.height * .4,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        itemBuilder: (context, int index) {
          return GestureDetector(
            onTap: () => {},
            child: listItem(data[index]),
          );
        },
      ),
    );
  }

  Widget listItem(item) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Image.network(item.image, 
        width: 200,
        height: 200,
      )
    );
  }
}