import 'package:flutter/material.dart';
import 'package:flutter_lab/tools/widget_helper.dart';
import 'package:flutter_lab/ui/hardware/camera_screen.dart';

class HardwareScreen extends StatefulWidget {
  final Widget child;

  HardwareScreen({Key key, this.child}) : super(key: key);

  _HardwareScreenState createState() => _HardwareScreenState();
}

class _HardwareScreenState extends State<HardwareScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hardware'),
      ),
      body: GridView(
        children: <Widget>[
            WidgetHelper.buttonOpen(context, CameraScreen(), name: 'Simple Camera')
        ],
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      ),
    );
  }
}