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
           WidgetHelper.colorBox(),
           WidgetHelper.colorBox(),
           WidgetHelper.colorBox(),
           WidgetHelper.colorBox(),
           WidgetHelper.colorBox(),
           WidgetHelper.colorBox()
         ], gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
       ),
    );
  }
}