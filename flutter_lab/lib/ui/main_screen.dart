import 'package:flutter/material.dart';
import 'package:flutter_lab/object/app_config.dart';
import 'package:flutter_lab/playground/playground_screen.dart';
import 'package:flutter_lab/tools/widget_helper.dart';
import 'package:flutter_lab/ui/animation_screen.dart';
import 'package:flutter_lab/ui/bloc_screen.dart';
import 'package:flutter_lab/ui/hardware_screen.dart';
import 'package:flutter_lab/ui/router_screen.dart';
import 'package:flutter_lab/ui/service_screen.dart';
import 'package:flutter_lab/ui/ui_screen.dart';
import 'package:flutter_lab/ui/widget_screen.dart';

class MainScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
          key: Key('main_gridview'),
          children: <Widget>[
            WidgetHelper.buttonOpen(context, PlaygroundScreen(), name: "Playground"),
            WidgetHelper.buttonOpen(context, WidgetScreen(), name: "Widget"),
            WidgetHelper.buttonOpen(context, AnimationScreen(), name: "Animation"),
            WidgetHelper.buttonOpen(context, RouterScreen(), name: "Routers"),
            WidgetHelper.buttonOpen(context, ServiceScreen(), name: "Service"),
            WidgetHelper.buttonOpen(context, BlocScreen(), name: "Bloc"),
            WidgetHelper.buttonOpen(context, UiScreen(), name: "Ui"),
            WidgetHelper.buttonOpen(context, HardwareScreen(), name: "Hardware"),
            WidgetHelper.buttonOpen(context, ServiceScreen(), name: "Experimenet"),
          ],
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        ));
  }

  
}
