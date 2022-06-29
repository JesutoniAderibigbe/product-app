import 'package:app_new/fresher.dart';
import 'package:flutter/material.dart';
import 'tabBar.dart';
import 'searchpage.dart';
import 'profile.dart';
import 'notificationbar.dart';
import 'Camera.dart';


class BottomVavigationBar extends StatefulWidget {
  const BottomVavigationBar({ Key? key }) : super(key: key);

  @override
  State<BottomVavigationBar> createState() => _BottomVavigationBarState();
}

class _BottomVavigationBarState extends State<BottomVavigationBar> {
  int _currentTabIndex =0;
  @override
  Widget build(BuildContext context) {
    final _kTabPages= <Widget>[
      Center(child: TabbyBar()),
       Center(child: SearchPage()),
        Center(child: Camera()),
         Center(child: NotificationBar()),
          Center(child: ProfilePage()),

    ];
    final _kBottomNavBarItems= <BottomNavigationBarItem>[
     const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
     const BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
     const BottomNavigationBarItem(icon: Icon(Icons.camera_alt_sharp), label: 'Camera'),
     const BottomNavigationBarItem(icon: Icon(Icons.notifications_none), label: 'Notifications'),
     const BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),

    ];
    assert(_kTabPages.length== _kBottomNavBarItems.length);
    final bottomNavBar= BottomNavigationBar(
      items: _kBottomNavBarItems,
      currentIndex: _currentTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index){
        setState(
          (){
            _currentTabIndex=index;
          }
        );
      });
    return Scaffold(
      body: _kTabPages[_currentTabIndex],
      bottomNavigationBar: bottomNavBar,
      
    );
  }
}