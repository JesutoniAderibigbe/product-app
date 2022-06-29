import 'package:app_new/payment.dart';
import 'package:flutter/material.dart';
import '../paymentservice.dart';

class Iphone31Bar extends StatelessWidget {
  const Iphone31Bar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 20.0,),
              Image.asset('assets/images/iphone13f.jfif'),
              SizedBox(height: 24.0,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:
              [
                Text("THE IPHONE SERIES; 13"),
                Icon(Icons.favorite, color: Colors.black,)

              ],),
              
              SizedBox(height: 30.0,
              ),
              Text('It ranges from #480,000 to #500,000'),
              SizedBox(height: 24.0),
              Center(child: ElevatedButton(style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20), primary: Colors.cyan, 
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