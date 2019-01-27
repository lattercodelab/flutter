import 'package:flutter/material.dart';

class WidgetHelper{

  static Container colorBox({
    BoxConstraints constraints = const BoxConstraints(minWidth: 0.0),
    double width, double height, 
    Color color = Colors.red}) {
    return Container(
          alignment: Alignment(0, 0), // absolute position on screen
          constraints: constraints,
          width: width,
          height: height,
          padding: const EdgeInsets.all(20.0),
          color: color,
          child: Text("Item"),
        );
  }

  static RaisedButton buttonOpen(BuildContext context, Widget screen, {String name = "Simple Item", Color textColor = Colors.black, Color bgColor = Colors.yellow}) {
    return RaisedButton(
            color: bgColor,
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
                color: bgColor,
                child: Text(name,
                    style: TextStyle(
                        fontSize: 20,
                        color: textColor,
                        fontWeight: FontWeight.bold)),
                onPressed: onPressed,
              );
  }
}