import 'package:flutter/material.dart';

class GestureDetectorScreen extends StatefulWidget {
  _GestureDetectorScreenState createState() => _GestureDetectorScreenState();
}

class _GestureDetectorScreenState extends State<GestureDetectorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GestureDetector'),
      ),
      body: GestureDetector(
        onTap: (){

        },
        child: Column(
          children: <Widget>[
            Text('Click me 1!!'),
            Text('Click me 2!!'),
            Text('Click me 3!!')
          ],
        ),
      ),
    );
  }
}