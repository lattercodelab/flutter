import 'package:flutter/material.dart';
import 'package:flutter_lab/ui/routers/profile_screen.dart';
import 'package:flutter_lab/tools/widget_helper.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {
          if(Navigator.canPop(context)){
            Navigator.pop(context);
          }else{
            print('Can\'t pop.');
          }
        }),
        title: Text("Home"),
        actions: <Widget>[
          AbsorbPointer(
            absorbing: true,
            ignoringSemantics: true,
            child: IconButton(
              icon: Icon(Icons.search),
              onPressed: (){
                print('Clicked Search');
              }),
            )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            WidgetHelper.buttonPressed(context, () {
              Navigator.push(context, MaterialPageRoute(builder : (context) => ProfileScreen()));
              //Navigator.pushNamed(context, 'profile');
            }, name: "Open")
          ],
        ),
      ),
    );
  }
}
