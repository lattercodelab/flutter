import 'package:flutter/material.dart';

class OverflowScreen extends StatefulWidget {
  @override
  _OverflowScreenState createState() => _OverflowScreenState();
}

class _OverflowScreenState extends State<OverflowScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Overflow"),
      ),
      body: Container(
        width: 100,
        height: 100,
        color: Colors.red[200],
        child: OverflowBox(
          alignment: Alignment.topLeft,
          maxWidth: 200,
          maxHeight: 200,
          child: Container(
            color: Color(0x33FF00FF),
            child: Text("Item"),
            height: 500,
            width: 500,
          ),
        ),
      ),
    );
  }
}
