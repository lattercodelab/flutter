import 'package:flutter/material.dart';
import 'package:flutter_lab/tools/widget_helper.dart';

class CustomScrollViewScreen extends StatefulWidget {
  @override
  _CustomScrollViewScreenState createState() => _CustomScrollViewScreenState();
}

class _CustomScrollViewScreenState extends State<CustomScrollViewScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 200,
              pinned: true,
              elevation: 10.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("FlexibleSapceBar"),
                collapseMode: CollapseMode.parallax,
              )
            ),
              // SliverList(
              //   delegate: SliverChildListDelegate([
              //     WidgetHelper.colorBox(height: 100, width: 100, color: Colors.red[200]),
              //     WidgetHelper.colorBox(height: 100, width: 100, color: Colors.red[200]),
              //     WidgetHelper.colorBox(height: 100, width: 100, color: Colors.red[200]),
              //     WidgetHelper.colorBox(height: 100, width: 100, color: Colors.red[200]),
              //     WidgetHelper.colorBox(height: 100, width: 100, color: Colors.red[200]),
              //     WidgetHelper.colorBox(height: 100, width: 100, color: Colors.red[200]),
              //     WidgetHelper.colorBox(height: 100, width: 100, color: Colors.red[200]),
              //     WidgetHelper.colorBox(height: 100, width: 100, color: Colors.red[200]),
              //   ]),
              // ),
              SliverFixedExtentList(
                itemExtent: 200,
                delegate: SliverChildBuilderDelegate((context, indxe){
                  return WidgetHelper.colorBox(height: 100, width: 100);
                }, childCount: 200)
              )
          ],
      ),
    );
  }
}

