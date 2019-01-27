import 'package:flutter/material.dart';
import 'package:flutter_lab/tools/widget_helper.dart';

// Avoid using it where possible. In the worst case, 
// this widget can result in a layout that is O(N²) 
// in the depth of the tree.

class IntrinsicHeightScreen extends StatefulWidget {
  @override
  _IntrinsicHeightScreenState createState() => _IntrinsicHeightScreenState();
}

class _IntrinsicHeightScreenState extends State<IntrinsicHeightScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IntrinsicHeight"),
      ),
      body: IntrinsicHeight( // match absolute size
        child: Row(
          children: <Widget>[
            WidgetHelper.colorBox(
                width: 100, color: Colors.red[300]),
            WidgetHelper.colorBox(
                width: 100, height: 200, color: Colors.blue[200]),
            WidgetHelper.colorBox(
                width: 100, color: Colors.green[500])
          ],
        ),
      ),
    );
  }
}
