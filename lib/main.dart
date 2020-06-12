import 'package:flutter/material.dart';
import 'package:tattomaster/screens/home.dart';
import 'package:tattomaster/screens/profile.dart';
import 'package:tattomaster/screens/welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData( 
        primarySwatch: Colors.blue,
      ),
      home: WelcomeScreen()
    );
  }
}