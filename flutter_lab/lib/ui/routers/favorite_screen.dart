import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorites"),
      ),
      body: Text("Favorites Screen."),
    );
  }
}