import 'package:flutter/material.dart';
import 'package:flutter_lab/tools/widget_helper.dart';

class FadeScreen extends StatefulWidget {
  @override
  _FadeScreenState createState() => _FadeScreenState();
}

class _FadeScreenState extends State<FadeScreen> {
  var _visible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fade")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            AnimatedOpacity(
              duration: const Duration(milliseconds: 100),
              opacity: _visible ? 1.0 : 0.0,
              child: Center(child: WidgetHelper.colorBox(width: 200, height: 200)),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: WidgetHelper.buttonPressed(context, () { 
                setState(() {
                  _visible = !_visible;
                });
              }, name: _visible ? "Disappear" : "Show"),
            )
        ]),
      ),
    );
  }
}
