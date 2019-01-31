import 'package:flutter/material.dart';
import 'package:flutter_lab/tools/widget_helper.dart';
import 'package:flutter_lab/ui/animation/fade_cross_screen.dart';
import 'package:flutter_lab/ui/animation/fade_screen.dart';
import 'package:flutter_lab/ui/animation/fade_transition_screen.dart';
import 'package:flutter_lab/ui/animation/scale_transition_screen.dart';

class AnimationScreen extends StatefulWidget {
  @override
  _AnimationScreenState createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animation")),
      body: GridView(
          children: <Widget>[
            WidgetHelper.buttonOpen(context, FadeScreen(), name: "Fade"),
            WidgetHelper.buttonOpen(context, FadeTransitionScreen(), name: "Fade Transition"),
            WidgetHelper.buttonOpen(context, FadeCrossScreen(), name: "Fade Cross"),
            WidgetHelper.buttonOpen(context, ScaleTransitionScreen(), name: "Scale Transition")
          ], gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      ),
    );
  }
}