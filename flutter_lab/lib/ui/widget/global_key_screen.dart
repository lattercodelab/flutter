import 'package:flutter/material.dart';
import 'package:flutter_lab/tools/widget_helper.dart';

class GlobalKeyScreen extends StatefulWidget {
  _GlobalKeyScreenState createState() => _GlobalKeyScreenState();
}

class _GlobalKeyScreenState extends State<GlobalKeyScreen> {

  var _scaffoldKey = GlobalKey<ScaffoldState>();
  var _columnSize = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('GlobalKey'),
      ),
      body: Center(
        child: Column(
          key: _columnSize,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            WidgetHelper.buttonPressed(context, (){
              var columnSize = _columnSize.currentContext.size;
              var scaffoldSize = _scaffoldKey.currentContext.size;
              print('Scaffold Size [${scaffoldSize.width}, ${scaffoldSize.height}]');
              print('Column Size [${columnSize.width}, ${columnSize.height}]');
            }, name : "Get Size by GlobalKey")
          ],
        ),
      ),
    );
  }
}