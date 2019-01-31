import 'package:flutter/material.dart';
import 'package:flutter_lab/tools/widget_helper.dart';

class FadeCrossScreen extends StatefulWidget {
  @override
  _FadeCrossScreenState createState() => _FadeCrossScreenState();
}

class _FadeCrossScreenState extends State<FadeCrossScreen> {

  var _transitiion = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fade Cross")
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            AnimatedCrossFade(
              duration: const Duration(milliseconds: 500),
              firstChild: WidgetHelper.colorBox(width: 200, height: 200, color: Colors.red[300]),
              secondChild: WidgetHelper.colorBox(width: 200, height: 200, color: Colors.blue[400]),
              crossFadeState: _transitiion ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            ),
            WidgetHelper.buttonPressed(context, (){
              setState(() {
                _transitiion = !_transitiion;
              });
            }, name: "Switch Child")
          ],
        ),
      ),
    );
  }
}