import 'package:flutter/material.dart';
import 'package:flutter_lab/tools/widget_helper.dart';

class WrapScreen extends StatefulWidget{

  @override
  _WrapScreen createState() => _WrapScreen();

}

class _WrapScreen extends State<WrapScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap Widget")
      ),
      body: Wrap(
        children: <Widget>[
          WidgetHelper.colorBox(width: 100),
          WidgetHelper.colorBox(width: 200),
          WidgetHelper.colorBox(width: 300),
          WidgetHelper.colorBox(width: 400),
          WidgetHelper.colorBox(width: 500),
        ],
      ),
    );
  }

}