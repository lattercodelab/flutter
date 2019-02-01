import 'package:flutter/material.dart';
import 'package:flutter_lab/ui/structure/simple_router_screen.dart';
import 'package:flutter_lab/tools/widget_helper.dart';

class RouterScreen extends StatefulWidget {
  _RouterScreenState createState() => _RouterScreenState();
}

class _RouterScreenState extends State<RouterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Router"),
      ),
      body: GridView(
        children: <Widget>[
          RaisedButton(
            child: Text('Material Router'),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SimpleRouterScreen()));
            },
          ),
          WidgetHelper.buttonOpen(context, SimpleRouterScreen(), name: "Navation Bar Router")
        ], gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      ),
    );
  }
}