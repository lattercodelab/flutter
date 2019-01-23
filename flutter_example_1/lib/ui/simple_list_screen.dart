import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_example_1/model/photosList.dart';

class SimpleListScreen extends StatefulWidget {

  SimpleListScreen({Key key}) : super(key: key);

  @override
  SimpleListState createState() => SimpleListState();
}

class SimpleListState extends State<SimpleListScreen>  {

  PhotosList photosList;
  ListView listView;

  @override
  void initState() {
    super.initState();
    setState(() {
      loadSchool();
    });
  }

  Future<String> _loadAStudentAsset() async {
    return await rootBundle.loadString('assets/json/photos.json');
  }

  void loadSchool() async{
    final jsonString = await _loadAStudentAsset();
    final response = jsonDecode(jsonString);
    print('response : $response');

    setState(() {
      photosList = PhotosList.fromJson(response);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple List"),
      ),
      body: ListView.builder(
        itemCount: photosList?.photos?.length ?? 0,
        itemBuilder: (BuildContext context, int index){
          Text("Item ${photosList.photos[index].title}");
        },
      ),
    );
  }

}