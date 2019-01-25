import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as Webserver;

class HttpRequestScreen extends StatefulWidget{

  @override
  _HttpRequestState createState() => _HttpRequestState();
}

class _HttpRequestState extends State<HttpRequestScreen>{

  String _response;

  Future<void> _getHttpRequest() async{
    final response = await Webserver.Client().get("https://jsonplaceholder.typicode.com/photos");
    final jsonStr = response.body.toString();
    setState(() {
      _response = jsonStr;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Http Request")
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            RaisedButton(
              child: Text("Get Request"),
              onPressed: (){
                _getHttpRequest();
              },
            )
          ],
        ),
      )
    );
  }
}