import 'package:flutter/material.dart';
import 'dart:math' as math;

class WidgetHelper{

  static Container colorBox({
    BoxConstraints constraints = const BoxConstraints(minWidth: 0.0),
    double width = 100, double height = 100, 
    Color color}) {
    return Container(
          alignment: Alignment(0, 0), // absolute position on screen
          constraints: constraints,
          width: width,
          height: height,
          padding: const EdgeInsets.all(20.0),
          color: color ?? randomColors(),
          child: Text("Item"),
        );
  }

  static RaisedButton buttonOpen(BuildContext context, Widget screen, {String name = "Simple Item", Color textColor = Colors.white, Color bgColor}) {
    return RaisedButton(
            color: bgColor ?? randomColors(),
            child: Text(name,
                style: TextStyle(
                    fontSize: 20,
                    color: textColor,
                    fontWeight: FontWeight.bold)),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
            },
          );
  }

  static RaisedButton buttonPressed(BuildContext context, VoidCallback onPressed, {String name = "Simple Item", Color textColor = Colors.black, Color bgColor = Colors.yellow}){
    return RaisedButton(
                padding: const EdgeInsets.all(8.0),
                color: randomColors(),
                child: Text(name,
                    style: TextStyle(
                        fontSize: 20,
                        color: textColor,
                        fontWeight: FontWeight.bold)),
                onPressed: onPressed,
              );
  }

  static randomColors(){
    return Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0);
  }
}