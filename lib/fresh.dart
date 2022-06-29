import 'package:app_new/BottomBar.dart';
import 'package:app_new/Camera.dart';
import 'package:app_new/Iphone8.dart';
import 'package:app_new/iphone7.dart';
import 'package:app_new/profile.dart';
import 'package:flutter/material.dart';
import 'iphone.dart';
import 'package:app_new/iphone10bar';
import 'iphone12pro.dart';
import 'iphone13.dart';
import 'iphone31.dart';



class FreshPage extends StatefulWidget {
   FreshPage({ Key? key }) : super(key: key);

  @override
  State<FreshPage> createState() => _FreshPageState();
}

class _FreshPageState extends State<FreshPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      body:
      
   
        
      ListView(
        
        scrollDirection: Axis.horizontal,
       
        
        children: [
          
          
         
        
          Padding(
            padding: const EdgeInsets.all(8.0),
            
            
            
            child: Container(
              child: Column(
                children: [
                  Image.asset('assets/images/iphone6.jfif', fit: BoxFit.contain, height:125, ),
                  
                  Text("RAM:4GB"),
                  Text("ROM:24GB"),
                  Center(child: ElevatedButton(style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                  ),
                  child: Text("Iphone 6"),
                  onPressed: (){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=> IphoneBar()));
                  }),),

                 
                ],),
              width:90.0,
              
             
            ),
          ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                 child: Column(
                   children: [Image.asset('assets/images/iphone7.jfif', fit: BoxFit.contain, height: 125,),
                   
                  Text("RAM:4GB"),
                  Text("ROM:28GB"),
                   Center(
                     child: ElevatedButton(style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),primary: Colors.black
                  ),
                  child: Text("Iphone 7"),
                  onPressed: (){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=> Iphone7Bar()));
                  }),),

                   
                   ],
                   ),
            width:90.0,
            
          ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                 child: Column(
                   children: [Image.asset('assets/images/iphone8.jfif', fit: BoxFit.contain, height:125 ),
         
                  Text("RAM:4GB"),
                  Text("ROM:30GB"),
                   Center(
                     child: ElevatedButton(style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20), primary: Colors.blueAccent
                  ),
                  child: Text("Iphone 8"),
                  onPressed: (){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=> Iphone8Bar()));
                  }),
                   )

                   ],),
            width:90.0,
            
          
          ),
             ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               child: Column(
                 children: [
                   Image.asset('assets/images/iphone10.jfif', fit: BoxFit.contain, height:125),
                   
                  Text("RAM:4GB"),
                  Text("ROM:56GB"),
                   Center(
                     child: ElevatedButton(style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20), primary: Colors.blue
                  ),
                  child: Text("Iphone 10"),
                  onPressed: (){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=> Iphone10Bar()));
                  }),
                   )

                 ],
               ),
              width:90.0,
              
          ),
           ),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
               child: Column(
                 children: [
                   Image.asset('assets/images/iphone12.jfif', fit: BoxFit.contain, height:125),
                 
                  Text("RAM:4GB"),
                  Text("ROM:64GB"),
                   Center(
                     child: ElevatedButton(style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20), primary: Colors.black
                  ),
                  child: Text("Iphone 12 pro"),
                  onPressed: (){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=> Iphone12Bar()));
                  }),
                   )
                 ],
               ),
              width:90.0,
              
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
               child: Column(
                 children: [
                   Image.asset('assets/images/iphone13.jfif', fit: BoxFit.contain, height:125),
                   const Text( "RAM:8GB"),
                  Text("ROM:256GB"),
                   Center(
                     child:ElevatedButton(style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20), primary: Colors.blue
                  ),
                  child: Text("Iphone 13 pro"),
                  onPressed: (){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=> Iphone13Bar()));
                  }),
                   )
                   

                 ],
               ),
              width:90.0,
              
            ),
          ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
               child: Column(
                 children: [
                   Image.asset('assets/images/iphone13f.jfif', fit: BoxFit.contain, height:125),
                 
                  Text("RAM:8GB"),
                  Text("ROM:128GB"),
                   Center(
                     child: ElevatedButton(style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20), primary: Colors.black
                  ),
                  child: Text("Iphone 13"),
                  onPressed: (){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=> Iphone31Bar()));
                  }),
                   )

                 ],
               ),
              width:90.0,
            
            ),
         ),


         
        
        




        ],
        
      ),
      
      
    
      
      
      

      
      
    );
    
}
}