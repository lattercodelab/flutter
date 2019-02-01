import 'package:flutter/material.dart';
import 'package:flutter_lab/ui/routers/bottom_nav_screen.dart';

class TabRouterScreen extends StatefulWidget {
  _TabRouterScreenState createState() => _TabRouterScreenState();
}

class _TabRouterScreenState extends State<TabRouterScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavScreen(),
      routes: <String, WidgetBuilder>{
        
      },
    );
  }
}