import 'package:flutter/material.dart';

class LimitBoxScreen extends StatefulWidget {
  @override
  _LimitBoxScreenState createState() => _LimitBoxScreenState();
}

class _LimitBoxScreenState extends State<LimitBoxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LimitBox"),
      ),
      body: Column(children: <Widget>[
        LimitedBox(
            maxWidth: 100,
            maxHeight: 100,
            child: Container(
              color: Colors.blue,
              width: 500,
              height: 900,
            )),
      ]),
    );
  }
}
