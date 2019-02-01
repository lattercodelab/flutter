import 'package:flutter/material.dart';
import 'package:flutter_lab/tools/widget_helper.dart';

class MediaQueryScreen extends StatefulWidget {
  _MediaQueryScreenState createState() => _MediaQueryScreenState();
}

class _MediaQueryScreenState extends State<MediaQueryScreen> {

  var screenWidth, screenHeight;

  @override
  Widget build(BuildContext context) {

    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    
    return Scaffold(
      appBar: AppBar(
        title: Text("MediaQuery"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
              Text("Screen [width : $screenWidth, height: $screenHeight]"),
          ],
        ),
      ),
    );
  }
}