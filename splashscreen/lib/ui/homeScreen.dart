import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  
  @override
  HomeState createState() => HomeState();

}

class HomeState extends State<HomeScreen>{

  @override
  void initState() {
    print("initState");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home")
        ),
        body: Center(
          child: Text("Hello World.")
        ),
      ),
    );
  }

}