import 'package:flutter/material.dart';
import 'package:flutter_lab/tools/widget_helper.dart';

class ColumnScreen extends StatefulWidget {
  @override
  _ColumnState createState() => _ColumnState();
}

class _ColumnState extends State<ColumnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min, //min = wrap_content, max = match_parent
        crossAxisAlignment: CrossAxisAlignment.start, //Gravity
        children: <Widget>[
          WidgetHelper.colorBox(width : 100, height: 200, color: Colors.green[200]),
          WidgetHelper.colorBox(width : 120, height: 200, color: Colors.blue[200]),
          WidgetHelper.colorBox(width : 140, height: 200, color: Colors.red[200]),
        ],
      ),
    );
  }
}
