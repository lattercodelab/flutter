import 'package:flutter/material.dart';
import 'package:flutter_lab/tools/widget_helper.dart';

class NestedScrollViewScreen extends StatefulWidget {
  @override
  _NestedScrollViewScreenState createState() => _NestedScrollViewScreenState();
}

class _NestedScrollViewScreenState extends State<NestedScrollViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NsetedScrollView")
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[

          ];
        },
        body: ListView(
          children: <Widget>[
            WidgetHelper.colorBox(width: 100, height: 100, color: Colors.red[200]),
            WidgetHelper.colorBox(width: 100, height: 100, color: Colors.green[200]),
            WidgetHelper.colorBox(width: 100, height: 100, color: Colors.blue[200]),
            WidgetHelper.colorBox(width: 100, height: 100, color: Colors.redAccent),
            WidgetHelper.colorBox(width: 100, height: 100, color: Colors.greenAccent),
            WidgetHelper.colorBox(width: 100, height: 100, color: Colors.blueAccent),
            WidgetHelper.colorBox(width: 100, height: 100, color: Colors.red[200]),
            WidgetHelper.colorBox(width: 100, height: 100, color: Colors.green[200]),
            WidgetHelper.colorBox(width: 100, height: 100, color: Colors.blue[200]),
            WidgetHelper.colorBox(width: 100, height: 100, color: Colors.redAccent),
            WidgetHelper.colorBox(width: 100, height: 100, color: Colors.greenAccent),
            WidgetHelper.colorBox(width: 100, height: 100, color: Colors.blueAccent),
            WidgetHelper.colorBox(width: 100, height: 100, color: Colors.red[200]),
            WidgetHelper.colorBox(width: 100, height: 100, color: Colors.green[200]),
            WidgetHelper.colorBox(width: 100, height: 100, color: Colors.blue[200]),
            WidgetHelper.colorBox(width: 100, height: 100, color: Colors.redAccent),
            WidgetHelper.colorBox(width: 100, height: 100, color: Colors.greenAccent),
            WidgetHelper.colorBox(width: 100, height: 100, color: Colors.blueAccent)
          ],
        ),
      ),
    );
  }
}