import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';

class ExistingCard extends StatefulWidget {
  const ExistingCard({ Key? key }) : super(key: key);

  @override
  State<ExistingCard> createState() => _ExistingCardState();
}

class _ExistingCardState extends State<ExistingCard> {
List cards =[{
   'cardNumber': '4242424242424242424',
        'expiryDate' : '04/24', 
        'cardHolderName': 'Toke Balogun',
        'cvvCode': '424',
        'showBackView': false,
},  {
   'cardNumber': '3233242425642424',
        'expiryDate' : '6/14', 
        'cardHolderName': 'Luke Balogun',
        'cvvCode': '123',
        'showBackView': false,

}];

payViaExisitingCard(BuildContext context, card){
  





  Navigator.pop(context);

}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
       title: Text("Exisiting Card")
     ),
     body: Container(
       padding: EdgeInsets.all(20),
       child: ListView.builder(
         itemCount: cards.length,
         itemBuilder: (BuildContext context, int index){
           var card= cards[index];
           return InkWell(
             onTap: (){
               payViaExisitingCard(context, card);
             },
             child: CreditCardWidget(
        cardNumber: card['cardNumber'],
        expiryDate: card['expiryDate'], 
        cardHolderName: card['cardHolderName'],
        cvvCode: card['cvvCode'],
        showBackView: false, onCreditCardWidgetChange: (CreditCardBrand ) {  }, //true when you want to show cvv(back) view
    ), );
         })
       
       
       ),

    
      
    );
  }
}