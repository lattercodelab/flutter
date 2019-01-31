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
            WidgetHelper.colorBox(),
            WidgetHelper.colorBox(),
            WidgetHelper.colorBox(),
            WidgetHelper.colorBox(),
            WidgetHelper.colorBox(),
            WidgetHelper.colorBox(),
            WidgetHelper.colorBox()
          ],
        ),
      ),
    );
  }
}