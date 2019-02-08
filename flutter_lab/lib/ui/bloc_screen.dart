import 'package:flutter/material.dart';
import 'package:flutter_lab/tools/widget_helper.dart';
import 'package:flutter_lab/ui/structure/news_bloc_screen.dart';
import 'package:flutter_lab/ui/structure/simple_bloc_screen.dart';

class BlocScreen extends StatefulWidget{
  @override
  _BlocScreenState createState() => _BlocScreenState();
}

class _BlocScreenState extends State<BlocScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bloc")
      ),
      body: GridView(
        children: <Widget>[
          WidgetHelper.buttonOpen(context, SimpleBlocScreen(), name: "Simple Bloc"),
          WidgetHelper.buttonOpen(context, NewsBlocScreen(), name: "API Bloc")
        ],
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      )
    );
  }

}
