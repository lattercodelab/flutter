import 'package:flutter/material.dart';
import 'package:flutter_lab/tools/widget_helper.dart';
import 'package:flutter/animation.dart' show Tween, AnimationController;

class FadeTransitionScreen extends StatefulWidget {
  @override
  _FadeTransitionScreenState createState() => _FadeTransitionScreenState();
}

class _FadeTransitionScreenState extends State<FadeTransitionScreen> with SingleTickerProviderStateMixin {
  
  AnimationController _controller;
  Tween<double> _visibleTween; // Tween<Any>
  Tween<double> _hiddenTween; // Tween<Any>
  Animation<double> _visibleAnim;
  Animation<double> _hiddenAnim;

  var _visible = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 500), vsync: this
    );

    _visibleTween = Tween(
      begin: 1.0,
      end: 0.0
    );

    _hiddenTween = Tween(
      begin: 0.0,
      end: 1.0
    );
    
    _visibleAnim = _visibleTween.animate(_controller);
    _hiddenAnim = _hiddenTween.animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fade Transition")),
        body: Center(
         child: Column(
           mainAxisSize: MainAxisSize.min,
           children: <Widget>[
             FadeTransition(
               opacity: _visible ? _visibleAnim : _hiddenAnim,
               child: WidgetHelper.colorBox(width: 200, height: 200),
             ),
             WidgetHelper.buttonPressed(context, (){
                setState(() {
                  _visible = !_visible;
                });
                
                _controller.forward();

             }, name: _visible ? "Show" : "Hidden")
           ],
         ),
      ),
    );
  }

}