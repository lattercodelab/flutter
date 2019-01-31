import 'package:flutter/material.dart';
import 'package:flutter_lab/tools/widget_helper.dart';

class ListViewScreen extends StatefulWidget {
  @override
  _ListViewScreenState createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView")),
          body: ListView(
         children: <Widget>[
           WidgetHelper.colorBox(),
           WidgetHelper.colorBox(),
           WidgetHelper.colorBox(),
           WidgetHelper.colorBox(),
           WidgetHelper.colorBox(),
           WidgetHelper.colorBox(),
           WidgetHelper.colorBox(),
           WidgetHelper.colorBox(),
           WidgetHelper.colorBox(),
           WidgetHelper.colorBox(),
           WidgetHelper.colorBox(),
           WidgetHelper.colorBox()
         ],
      ),
    );
  }
}