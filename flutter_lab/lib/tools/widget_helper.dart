import 'package:flutter/material.dart';

class WidgetHelper{
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