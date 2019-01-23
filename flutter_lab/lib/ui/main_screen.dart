import 'package:flutter/material.dart';
import 'package:flutter_lab/object/app_config.dart';
import 'package:flutter_lab/ui/binding_screen.dart';

class MainScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: config?.appName ?? 'Flutter Lab'),
    );
  }

}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              RaisedButton(
                child: Text("Binding"), 
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BindingScreen()));
                },
              )
          ],
        ),
      ),
    );
  }
}
