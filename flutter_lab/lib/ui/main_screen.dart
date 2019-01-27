import 'package:flutter/material.dart';
import 'package:flutter_lab/object/app_config.dart';
import 'package:flutter_lab/tools/widget_helper.dart';
import 'package:flutter_lab/ui/service_screen.dart';
import 'package:flutter_lab/ui/widget_screen.dart';

class MainScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: config?.appName ?? 'Flutter Lab'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: GridView(
          children: <Widget>[
            WidgetHelper.buttonOpen(context, WidgetScreen(), name: "Widget", bgColor: Colors.red),
            WidgetHelper.buttonOpen(context, ServiceScreen(), name: "Service", bgColor: Colors.blueAccent, textColor: Colors.black),
            WidgetHelper.buttonOpen(context, ServiceScreen(), name: "Ui", bgColor: Colors.pinkAccent, textColor: Colors.black),
            WidgetHelper.buttonOpen(context, ServiceScreen(), name: "Experimenet", bgColor: Colors.greenAccent, textColor: Colors.black),
          ],
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        ));
  }

  
}
