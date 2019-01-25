import 'package:flutter/material.dart';
import 'package:flutter_lab/tools/widget_helper.dart';
import 'package:flutter_lab/ui/test_service/test_http_screen.dart';

class TestServiceScreen extends StatefulWidget{
  @override
  _TestServiceState createState() => _TestServiceState();
}

class _TestServiceState extends State<TestServiceScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Service"),
      ),
      body: ListView(
        children: <Widget>[
          WidgetHelper.buttonOpen(context, TestHttpScreen(), textColor: Colors.black, bgColor: Colors.green)
        ],
      ),
    );
  }

}