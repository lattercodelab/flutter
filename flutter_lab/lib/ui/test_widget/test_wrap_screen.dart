import 'package:flutter/material.dart';

class TestWrapScreen extends StatefulWidget{

  @override
  _TestWrapState createState() => _TestWrapState();

}

class _TestWrapState extends State<TestWrapScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap Widget")
      ),
      body: Wrap(
        children: <Widget>[
          getItemView(width: 100),
          getItemView(width: 200, color: Colors.red[200]),
          getItemView(width: 300, color: Colors.red[300]),
          getItemView(width: 400, color: Colors.red[400]),
          getItemView(width: 500, color: Colors.red[500]),
        ],
      ),
    );
  }

  Container getItemView({double width, Color color = Colors.red}) {
    return Container(
          width: width,
          padding: const EdgeInsets.all(20.0),
          color: color,
          child: Text("Item 4"),
        );
  }
}