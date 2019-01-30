import 'package:flutter/material.dart';

class AsyncScreen extends StatefulWidget {
  @override
  _AsyncScreenState createState() => _AsyncScreenState();
}

class _AsyncScreenState extends State<AsyncScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Async")),
      body: ListView(
        children: <Widget>[
          Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                RaisedButton(
                  child: Text("Async Test"),
                  onPressed: () {},
                )
              ])
        ],
      ),
    );
  }
}
