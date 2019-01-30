import 'package:flutter/material.dart';
import 'package:flutter_lab/tools/widget_helper.dart';
import 'package:flutter_lab/ui/widget/column_screen.dart';
import 'package:flutter_lab/ui/widget/customscrollview_screen.dart';
import 'package:flutter_lab/ui/widget/expanded_screen.dart';
import 'package:flutter_lab/ui/widget/gridview_screen.dart';
import 'package:flutter_lab/ui/widget/intrinsic_height_screen.dart';
import 'package:flutter_lab/ui/widget/limit_box_screen.dart';
import 'package:flutter_lab/ui/widget/listview_screen.dart';
import 'package:flutter_lab/ui/widget/nestedscrollview_screen.dart';
import 'package:flutter_lab/ui/widget/overflow_box_screen.dart';
import 'package:flutter_lab/ui/widget/row_screen.dart';
import 'package:flutter_lab/ui/widget/sliverappbar_screen.dart';
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
          WidgetHelper.buttonOpen(context, WrapScreen(), name: "Wrap"),
          WidgetHelper.buttonOpen(context, RowScreen(), name: "Row"),
          WidgetHelper.buttonOpen(context, ColumnScreen(), name: "Column"),
          WidgetHelper.buttonOpen(context, ExpandedScreen(), name: "Expanded"),
          WidgetHelper.buttonOpen(context, IntrinsicHeightScreen(), name: "IntrinsicHeight"),
          WidgetHelper.buttonOpen(context, LimitBoxScreen(), name: "LimitBox"),
          WidgetHelper.buttonOpen(context, OverflowScreen(), name: "Overrflow"),
          WidgetHelper.buttonOpen(context, ListViewScreen(), name: "ListView"),
          WidgetHelper.buttonOpen(context, GridViewScreen(), name: "GridView"),
          WidgetHelper.buttonOpen(context, NestedScrollViewScreen(), name: "NestedScrollView"),
          WidgetHelper.buttonOpen(context, CustomScrollViewScreen(), name: "CustomScrollView"),
          WidgetHelper.buttonOpen(context, SliverAppBarScreen(), name: "SliverAppBar"),
        ],
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      ),
    );
  }
}
