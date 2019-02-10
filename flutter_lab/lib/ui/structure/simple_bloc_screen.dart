import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_lab/tools/widget_helper.dart';

class SimpleBlocScreen extends StatefulWidget {
  _SimpleBlocScreenState createState() => _SimpleBlocScreenState();
}

class _SimpleBlocScreenState extends State<SimpleBlocScreen> {

  final _streamController = StreamController<int>();
  var _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Bloc"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: StreamBuilder(
                    stream: _streamController.stream,
                    initialData: 0,
                    builder: (context, snapshot) => Text('Counter : $_counter', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),)
                ),
            ),
            WidgetHelper.buttonPressed(context, () {
              _streamController.sink.add(++_counter);
            }, name: 'Increment')
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _streamController.close();
    super.dispose();
  }

}
