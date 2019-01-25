import 'package:flutter/material.dart';
import 'package:flutter_lab/tools/widget_helper.dart';
import 'package:flutter_lab/ui/test_widget/test_wrap_screen.dart';

class TestWidgetScreen extends StatefulWidget {
  @override
  _TestWidgetState createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Widget"),
      ),
      body: ListView(
        children: <Widget>[
          WidgetHelper.buttonOpen(context, TestWrapScreen(), name: "Wrap")
        ],
      ),
    );
  }
}
