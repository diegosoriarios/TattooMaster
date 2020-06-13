import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:tattomaster/screens/splashscreen.dart';
import 'package:tattomaster/screens/welcome.dart';
import 'package:tattomaster/stores/user_store.dart';

void main() => runApp(MyApp());

final userStore = UserStore();
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData( 
        primarySwatch: Colors.blue,
      ),
      home: Splash()
    );
  }
}