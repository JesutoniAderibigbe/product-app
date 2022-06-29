import 'package:flutter/material.dart';
import 'BottomBar.dart';
import 'payment.dart';

class Iphone7Bar extends StatelessWidget {
  const Iphone7Bar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 20.0,),
              Image.asset('assets/images/iphone7.jfif'),
              SizedBox(height: 24.0,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:
              [
                Text("THE IPHONE SERIES; 7"),
                Icon(Icons.favorite, color: Colors.red,)

              ],),
              
              SizedBox(height: 30.0,
              ),
              Text('It ranges from #110,000 to #130,000'),
              SizedBox(height: 24.0),
              Center(child: ElevatedButton(style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20), primary: Colors.red, 
              ),
              child: Text('Pay Here'),
              
              onPressed: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context)=> PaymentBar()));
              })),
              

              




            ],)
          ),)
      
    );
  }
}