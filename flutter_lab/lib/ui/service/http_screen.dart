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
    final response = await WebServer.Client().get("https://jsonplaceholder.typicode.com/photos");
    setState(() {
      _response = response.body.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Http")),
        body: Column(
          children: <Widget>[
            Text(_response ?? ""),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 150,
                  height: 50,
                  child: RaisedButton(
                      color: Colors.red[400],
                      textColor: Colors.white,
                      child: Text(
                        "Load API",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        _httpCall();
                      }),
                )
              ],
            )
          ],
        ));
  }
}
