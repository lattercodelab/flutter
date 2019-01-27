import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as WebServer;

class HttpScreen extends StatefulWidget {
  @override
  _HttpState createState() => _HttpState();
}

class _HttpState extends State<HttpScreen> {
  String _response;

  Future<void> _httpCall() async {
    final response = await WebServer.Client()
        .get("https://jsonplaceholder.typicode.com/photos");
    setState(() {
      _response =
          "Most apps contain several screens for displaying different types of information. For example, an app might have a screen that displays products. Users can then tap the image of a product to get more detailed information on a new screen.";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Http")),
        body: Column(
          children: <Widget>[
            Column(children: <Widget>[Text(_response ?? "")]),
            Expanded(
              flex: 2,
              child: RaisedButton(
                child: Text("Load API"),
                onPressed: () {
                  _httpCall();
                },
              ),
            )
          ],
        ));
  }
}
