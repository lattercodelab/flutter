import 'package:flutter/material.dart';
import 'package:flutter_lab/ui/routers/favorite_screen.dart';
import 'package:flutter_lab/ui/routers/home_screen.dart';
import 'package:flutter_lab/ui/routers/profile_screen.dart';

class BottomNavScreen extends StatefulWidget {
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {

  var _curIndex = 0;
  var pages = [HomeScreen(), FavoriteScreen(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation"),
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    return Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: pages[_curIndex],
          ),
          Expanded(
            child: BottomNavigationBar(
              type: BottomNavigationBarType.shifting,
              currentIndex: _curIndex,
              items: getNavItems(),
              onTap: (index) {
                setState(() {
                  _curIndex = index;
                });
              }
            ),
          )
        ],
    );
  }

  BottomNavigationBarItem getNavItem(IconData iconData){
    return BottomNavigationBarItem(
      icon: Icon(iconData)
    );
  }

  List<BottomNavigationBarItem> getNavItems(){
    return [
      getNavItem(Icons.home), 
      getNavItem(Icons.favorite), 
      getNavItem(Icons.settings)
    ];
  }
}