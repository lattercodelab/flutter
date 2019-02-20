import 'package:flutter/material.dart';
import 'package:flutter_lab/tools/widget_helper.dart';
import 'package:flutter_lab/ui/experiment/simple_bottombar_screen.dart';

class UiScreen extends StatefulWidget {
  _UiScreenState createState() => _UiScreenState();
}

class _UiScreenState extends State<UiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('UI'),
        ),
        body: GridView(
          children: <Widget>[
            WidgetHelper.buttonOpen(context, SimpleBottomBarScreen(), name: "Simple \nBottom Bar")
          ],
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        ),
    );
  }
}
