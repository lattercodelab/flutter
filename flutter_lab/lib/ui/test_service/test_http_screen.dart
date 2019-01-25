import 'package:flutter/material.dart';
import 'package:flutter_lab/tools/widget_helper.dart';
import 'dart:async';
import 'package:http/http.dart' as Webserver;

class TestHttpScreen extends StatefulWidget{

  @override
  _TestHttpState createState() => _TestHttpState();
}

class _TestHttpState extends State<TestHttpScreen>{

  String _response;

  Future<void> _httpCall() async{
    final response = await Webserver.Client().get("https://jsonplaceholder.typicode.com/photos");
    setState(() {
      _response = response.body.toString();
    });
  }

  @override
  void dispose() {
    Webserver.Client().close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Http")
      ),
      body: ListView(
        children: <Widget>[
          // Expanded(
          //   flex: 1,
          //   child: Text("$_response"),
          // ),
          // Expanded(
          //   flex: 2,
          //   child: WidgetHelper.buttonPressed(context, (){
          //     _httpCall();  
          //   }),
          // )
          
        ],
      )
    );
  }
}