import 'package:flutter/material.dart';

class AbsorbPointerScreen extends StatefulWidget {
  _AbsorbPointerScreenState createState() => _AbsorbPointerScreenState();
}

class _AbsorbPointerScreenState extends State<AbsorbPointerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('AbsorbPointer'),
       ),
       body: Column(
         children: <Widget>[
           AbsorbPointer(
             absorbing: true,
             ignoringSemantics: true,
             child: RaisedButton(
               child: Text('Click me!'),
               onPressed: (){
                print('AbsorbPointer Click!!');
               },
             ),
           ),
           RaisedButton(
             child: Text('Click me too!'),
             onPressed: (){
               print('Click too!!');
             },
           )
         ],
       ),
    );
  }
}