import 'package:app_new/paymentservice.dart';
import 'package:flutter/material.dart';
import 'existingpayments.dart';
import 'package:flutter/services.dart';

class PaymentBar extends StatefulWidget {
  const PaymentBar({ Key? key }) : super(key: key);

  @override
  State<PaymentBar> createState() => _PaymentBarState();
}

class _PaymentBarState extends State<PaymentBar> {

  onItemPress(BuildContext context, int index){
  switch(index){
    case 0:
        var response = StripeService.payWithNewCard(
          amount: '150',
          currency: '#'
        );
        if (response.success =true){
          Scaffold.of(context).showSnackBar(
            SnackBar(content: Text(response.message),
            duration: new Duration(milliseconds: 1200),)
          );
        }
        break;
        case 1:
        Navigator.pushNamed(context, '/exisiting cards');
        break;
  }
  }
  
  @override
  Widget build(BuildContext context) {
    ThemeData theme= Theme.of(context);
  
   
    return Scaffold(
     appBar: AppBar(
       title: Text("Payment Bar")
     ),
     body: Container(
       padding: EdgeInsets.all(20),
       child: ListView.separated(
         itemBuilder: (context, index){
           Icon icon;
           Text text;

           switch(index){
             case 0:
             icon =Icon(Icons.add_circle,
             color: theme.primaryColor);
             text: const Text('Pay via new card');

             break;
             case 1:
              icon =Icon(Icons.credit_card,
             color: theme.primaryColor);
             text: const Text('Pay via exisiting card');
             break;

           }
           return InkWell(
             onTap: (){
               onItemPress(context, index);
             },
             child:  Center(
                     child: ElevatedButton(style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20), primary: Colors.black
                  ),
                  child: Text("Exisiting Card"),
                  onPressed: (){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=> ExistingCard()));
                  }),
                   )

           );

         }, 
         itemCount: 2, separatorBuilder: (context, index) => Divider(color: theme.primaryColor) ),
         
      ),
       
       );
    
  }
}