import 'package:flutter/material.dart';
import 'BottomBar.dart';

class Iphone8Bar extends StatelessWidget {
  const Iphone8Bar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 20.0,),
              Image.asset('assets/images/iphone8.jfif'),
              SizedBox(height: 24.0,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:
              [
                Text("THE IPHONE SERIES; 8"),
                Icon(Icons.favorite, color: Colors.black,)

              ],),
              
              SizedBox(height: 30.0,
              ),
              Text('It ranges from #120,000 to #135,000'),
              SizedBox(height: 24.0),
              Center(child: ElevatedButton(style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20), primary: Colors.yellow, 
              ),
              child: Text('Pay Here'),
              
              onPressed: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context)=> BottomVavigationBar()));
              })),
              

              




            ],)
          ),)
      
    );
  }
}