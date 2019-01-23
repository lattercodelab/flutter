import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  @override
  SplashState createState() => SplashState();
}

class SplashState extends State<SplashScreen>{

  @override
    void initState() {
      super.initState();
      startApp();
    }

  @override
  Widget build(BuildContext context) {
    Image logo = Image.asset(
      'assets/ic_flutter_logo.png',
      width: 100,
      height: 100,
      fit: BoxFit.fill,
    );
    
    return Scaffold(
        body: Center(
          child: logo
        )
    );
  }

  startApp() async{
    var duration = Duration(seconds: 2);
    return Timer(duration, toHome);
  }

  void toHome(){
    Navigator.of(context).pushReplacementNamed("/HomeScreen");
  }
}