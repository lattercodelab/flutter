import 'package:flutter/material.dart';
import 'package:flutter_lab/tools/widget_helper.dart';

class GridViewScreen extends StatefulWidget {
  @override
  _GridViewScreenState createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("GridView")),
       body: GridView(
         children: <Widget>[
           WidgetHelper.colorBox(width: 100, height: 100, color: Colors.red[200]),
           WidgetHelper.colorBox(width: 100, height: 100, color: Colors.green[200]),
           WidgetHelper.colorBox(width: 100, height: 100, color: Colors.blue[200]),
           WidgetHelper.colorBox(width: 100, height: 100, color: Colors.redAccent),
           WidgetHelper.colorBox(width: 100, height: 100, color: Colors.greenAccent),
           WidgetHelper.colorBox(width: 100, height: 100, color: Colors.blueAccent),
         ], gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
       ),
    );
  }
}