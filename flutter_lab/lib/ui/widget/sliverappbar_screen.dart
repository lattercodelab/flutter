import 'package:flutter/material.dart';

class SliverAppBarScreen extends StatefulWidget {
  @override
  _SliverAppBarScreenState createState() => _SliverAppBarScreenState();
}

class _SliverAppBarScreenState extends State<SliverAppBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
            return <Widget>[
              SliverAppBar(
                pinned: true,
                expandedHeight: 200,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text("SliverAppBar"),
                ),
              )
            ];
        },
        body: Center(child: Text("Testing SliverAppBar")),
      ),
    );
  }
}