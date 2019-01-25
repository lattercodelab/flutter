import 'package:flutter/material.dart';
import 'package:flutter_lab/object/app_config.dart';
import 'package:flutter_lab/tools/widget_helper.dart';
import 'package:flutter_lab/ui/test_service_screen.dart';
import 'package:flutter_lab/ui/test_widget/test_wrap_screen.dart';
import 'package:flutter_lab/ui/test_widget_screen.dart';

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
            WidgetHelper.buttonOpen(context, TestWidgetScreen(), name: "Widget", bgColor: Colors.red),
            WidgetHelper.buttonOpen(context, TestServiceScreen(), name: "Service", bgColor: Colors.yellow, textColor: Colors.black),
            WidgetHelper.buttonOpen(context, TestWrapScreen(), name: "Colunm Widget", bgColor: Colors.blue, textColor: Colors.black),
          ],
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        ));
  }

  
}
