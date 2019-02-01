import 'package:flutter/material.dart';
import 'package:flutter_lab/ui/routers/home_screen.dart';
import 'package:flutter_lab/ui/routers/profile_screen.dart';

class SimpleRouterScreen extends StatefulWidget {
  _SimpleRouterScreenState createState() => _SimpleRouterScreenState();
}

class _SimpleRouterScreenState extends State<SimpleRouterScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      routes: <String, WidgetBuilder>{
        'home' : (BuildContext context) => HomeScreen(),
        'profile' : (BuildContext context) => ProfileScreen()
      }
    );
  }
}