import 'package:flutter/material.dart';
import 'package:flutter_lab/tools/widget_helper.dart';

class ExpandedScreen extends StatefulWidget {
  @override
  _ExpandedState createState() => _ExpandedState();
}

class _ExpandedState extends State<ExpandedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("Expanded")
       ),
       body: Row(
         children: <Widget>[
           Expanded(
             flex: 2,
             child: WidgetHelper.colorBox(constraints: BoxConstraints(minWidth: double.infinity), height: 100),
           ),
           Expanded(
             flex: 1,
             child: WidgetHelper.colorBox(width: 10, height: 100),
           )
         ],
       ),
    );
  }
}