import 'package:flutter/material.dart';
import 'productbox.dart';

class TabbyBar extends StatelessWidget {
  const TabbyBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _kTabPages=<Widget>[
      Center(child: MyGrid(),),
      Center(child: Text("Fresh")),
      Center(child: Text("Latest")),
    ];
    final _kTabs=<Tab>[
      Tab(child: Text("New")),
      Tab(child: Text("Fresh")),
      Tab(child: Text("Latest")),
    ];
    return DefaultTabController(
      length: _kTabs.length, 
      child: Scaffold(
        appBar:  AppBar(
          title:  const Text("Zebramo"),
           centerTitle: true,
             backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shadowColor: Colors.black,

           bottom: TabBar(
             tabs: _kTabs,
              labelColor: Colors.black,
             ),
      
         
         ),
         body: TabBarView(
           children: _kTabPages),
        
      ),
      
    
    
        
        );
      
  
      
      
  }
}