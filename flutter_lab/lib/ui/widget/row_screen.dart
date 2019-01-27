import 'package:flutter/material.dart';
import 'package:flutter_lab/tools/widget_helper.dart';

class RowScreen extends StatefulWidget {
  @override
  _RowScreenState createState() => _RowScreenState();
}

class _RowScreenState extends State<RowScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Row"),
        ),
        body: Row(
          mainAxisSize: MainAxisSize.min, //min = wrap_content, max = match_parent
          crossAxisAlignment: CrossAxisAlignment.start, //Gravity
          children: <Widget>[
            WidgetHelper.colorBox(width: 100, height: 100, color: Colors.red),
            WidgetHelper.colorBox(width: 100, height: 100, color: Colors.blue),
            WidgetHelper.colorBox(width: 100, height: 100, color: Colors.green)
          ],
        ),
      ),
    );
  }
}
