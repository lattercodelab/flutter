import 'package:flutter/material.dart';
import 'package:flutter_lab/object/bindmodel.dart';

class BindingScreen extends StatefulWidget{
  @override
  _BindingState createState() => _BindingState();
}

class _BindingState extends State<BindingScreen>{

  BindModel bindModel = BindModel();

  void notifyModel(BindModel model){
    setState(() {
        bindModel = model;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Binding Data")
      ),
      body: ListView(
        children: <Widget>[
          Text("Name : ${bindModel.value}"),
          RaisedButton(
            child: Text("Show Kotlin"),
            onPressed: (){
              setState((){
                  notifyModel(BindModel(value: "Kotlin"));
              });
            },
          ),
          RaisedButton(
            child: Text("Show Swift"),
            onPressed: (){
              setState((){
                  notifyModel(BindModel(value: "Swift"));
              });
            },
          ),
        ],
      ),
    );
  }

}
