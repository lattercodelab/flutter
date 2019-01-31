import 'package:flutter/material.dart';
import 'package:flutter_lab/tools/widget_helper.dart';

class ScaleTransitionScreen extends StatefulWidget {
  @override
  _ScaleTransitionScreenState createState() => _ScaleTransitionScreenState();
}

class _ScaleTransitionScreenState extends State<ScaleTransitionScreen> with SingleTickerProviderStateMixin {

  var _scaleTrans = false;
  AnimationController _controller;
  Animation<double> _zoomAnim;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 100),
      vsync: this
    );

    _zoomAnim = Tween(
      begin: 1.0,
      end: 0.2
    ).animate(_controller);
  
  
  }
  
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scale Transition"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ScaleTransition(
              child: WidgetHelper.colorBox(width: 200, height: 200), 
              scale: _zoomAnim,
            ),
            WidgetHelper.buttonPressed(context, (){
              setState(() {
                _scaleTrans = !_scaleTrans;
              });

              _scaleTrans ? _controller.forward() : _controller.reverse();
            }, name: _scaleTrans ? "Zoom In" : "Zoom Out")
          ],
        ),
      ),
    );
  }
}