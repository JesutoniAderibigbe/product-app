import 'package:flutter/material.dart';
import 'BottomBar.dart';
import 'payment.dart';

class Iphone12Bar extends StatelessWidget {
  const Iphone12Bar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 20.0,),
              Image.asset('assets/images/iphone12.jfif'),
              SizedBox(height: 24.0,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:
              [
                Text("THE IPHONE SERIES; 12"),
                Icon(Icons.favorite, color: Colors.black,)

              ],),
              
              SizedBox(height: 30.0,
              ),
              Text('It ranges from #350,000 to #420,00'),
              SizedBox(height: 24.0),
              Center(child: ElevatedButton(style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20), primary: Colors.blue, 
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