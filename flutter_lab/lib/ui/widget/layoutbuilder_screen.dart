import 'package:flutter/material.dart';

class LayoutBuilderScreen extends StatefulWidget {
  _LayoutBuilderScreenState createState() => _LayoutBuilderScreenState();
}

class _LayoutBuilderScreenState extends State<LayoutBuilderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LayoutBuilder")),
      body: Center(
        child: Container(
          child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            LayoutBuilder(builder: (context, boxConstrants) {
              return Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('Parent : [maxHeight : ${boxConstrants.maxHeight}, maxWidth : ${boxConstrants.maxWidth}]', 
                      style: TextStyle(
                        color: Colors.redAccent,
                        background: Paint()..color = Colors.greenAccent
                      )),
                  ],
                ),
              );
            })
          ],
        )),
      ),
    );
  }
}
