import 'package:flutter/material.dart';
import 'ui/splashScreen.dart';
import 'ui/homeScreen.dart';

void main() => runApp(Main());

class Main extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      routes: <String, WidgetBuilder> {
        '/HomeScreen': (BuildContext context) => HomeScreen() 
      });
  }

}
