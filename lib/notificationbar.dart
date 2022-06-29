import 'package:flutter/gestures.dart';
import "package:flutter/material.dart";
import 'package:backdrop/backdrop.dart';


class NotificationBar extends StatelessWidget {
  const NotificationBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
              appBar:BackdropAppBar(
                title: const Text("Notifications"),
                centerTitle: true,
                actions: [
                  BackdropToggleButton(
                    icon: AnimatedIcons.list_view,
                  )
                ],
                backgroundColor: Colors.teal
              
              ),

              
              headerHeight: 120.0,
              frontLayer: Center(
                child: Column(
                  children: [
                    Image.asset('assets/images/bell.jpg', width: 100, height: 500,),
                    Text("Nothing here!!!", style: TextStyle(color: Colors.black)),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Tap the notification settings below, and check again.")
                    ],
                    ),
                    SizedBox(
                      height: 50,
                      width: 30,
                    ),
                    Container(
                      width: 220,
                      height: 50,
                    color: Colors.pink,

                    child: GestureDetector(
                      onDoubleTap: (){
                      setState((){
                         _showDialog(context); 
                        },
                      );
                      },
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    
                      children: [
                        Text("Notification Settings"),
                        IconButton(onPressed: (
                        ) {
                          GestureDetector(
                            onTap: (){
                              _showDialog(context);
                            },
                            child: Text("Tap Me"),

                          );
                        }, icon: Icon(Icons.notification_add))
                      ],
                    ),
                    
                    )
                  
                    
                    
                    )
                  ],
                )
                
                ),
                backLayer: BackdropNavigationBackLayer(
                  items: [
                    ListTile(title: Text("Contacts")),
                    ListTile(title: Text("Fresh"),)
                  ],)
    );
  }

  void setState(Null Function() param0) {}
}


class _showDialog {
  _showDialog(BuildContext context);
}
