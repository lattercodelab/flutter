import 'package:flutter/material.dart';
import 'package:flutter_lab/tools/widget_helper.dart';
import 'package:flutter_lab/ui/widget/column_screen.dart';
import 'package:flutter_lab/ui/widget/expanded_screen.dart';
import 'package:flutter_lab/ui/widget/intrinsic_height_screen.dart';
import 'package:flutter_lab/ui/widget/limit_box_screen.dart';
import 'package:flutter_lab/ui/widget/overflow_box_screen.dart';
import 'package:flutter_lab/ui/widget/row_screen.dart';
import 'package:flutter_lab/ui/widget/wrap_screen.dart';

class WidgetScreen extends StatefulWidget {
  @override
  _TestWidgetState createState() => _TestWidgetState();
}

class _TestWidgetState extends State<WidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Widget"),
      ),
      body: GridView(
        children: <Widget>[
          WidgetHelper.buttonOpen(context, WrapScreen(), name: "Wrap", textColor: Colors.white, bgColor: Colors.red[600]),
          WidgetHelper.buttonOpen(context, RowScreen(), name: "Row", textColor: Colors.white, bgColor: Colors.blue[600]),
          WidgetHelper.buttonOpen(context, ColumnScreen(), name: "Column", textColor: Colors.green[100], bgColor: Colors.green[600]),
          WidgetHelper.buttonOpen(context, ExpandedScreen(), name: "Expanded", textColor: Colors.white, bgColor: Colors.red[500]),
          WidgetHelper.buttonOpen(context, IntrinsicHeightScreen(), name: "IntrinsicHeight", textColor: Colors.white, bgColor: Colors.red[500]),
          WidgetHelper.buttonOpen(context, LimitBoxScreen(), name: "LimitBox", textColor: Colors.white, bgColor: Colors.blue[200]),
          WidgetHelper.buttonOpen(context, OverflowScreen(), name: "Overrflow", textColor: Colors.white, bgColor: Colors.red[400]),
        ],
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      ),
    );
  }
}

class ExpandedScree {
}
