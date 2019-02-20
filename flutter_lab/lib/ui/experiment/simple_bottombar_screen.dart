import 'package:flutter/material.dart';

class SimpleBottomBarScreen extends StatefulWidget {
  @override
  _SimpleBottomBarScreenState createState() => _SimpleBottomBarScreenState();
}

class _SimpleBottomBarScreenState extends State<SimpleBottomBarScreen> {
  int _selectedIndex = 0;

  List<BottomNavigationBarItem> _navs = [
    BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
    BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('Search')),
    BottomNavigationBarItem(icon: Icon(Icons.people), title: Text('People')),
    BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text('Settings')),
  ];

  Widget _buildItem(BottomNavigationBarItem item, bool isSelected) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      height: double.infinity,
      width: isSelected ? 120 : 50,
      padding:
          isSelected ? EdgeInsets.only(left: 16) : EdgeInsets.only(left: 8),
      decoration: isSelected
          ? BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.all(Radius.circular(20.0)))
          : null,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconTheme(
                  data: IconThemeData(
                      size: 20,
                      color: isSelected ? Colors.white : Colors.black),
                  child: item.icon),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: isSelected
                    ? DefaultTextStyle(
                        style: TextStyle(color: Colors.white),
                        child: item.title,
                      )
                    : Container())
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Bar'),
      ),
      body: Container(
        child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: <Widget>[
              Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: SafeArea(
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.blueAccent,
                    padding: EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: _navs.map((f) {
                          int itemIndex = _navs.indexOf(f);

                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedIndex = itemIndex;
                              });
                            },
                            child: _buildItem(f, _selectedIndex == itemIndex),
                          );
                        }).toList()),
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
