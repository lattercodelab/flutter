import 'package:flutter/material.dart';
import 'package:flutter_lab/tools/widget_helper.dart';
import 'package:flutter_lab/ui/service/http_screen.dart';

class ServiceScreen extends StatefulWidget{
  @override
  _ServiceState createState() => _ServiceState();
}

class _ServiceState extends State<ServiceScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Service"),
      ),
      body: GridView(
        children: <Widget>[
          WidgetHelper.buttonOpen(context, HttpScreen(), name: "Http", textColor: Colors.black, bgColor: Colors.green)
        ],
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      ),
    );
  }

}