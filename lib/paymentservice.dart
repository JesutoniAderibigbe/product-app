import 'package:flutter/material.dart';


class StripeTransactionResponse{
  late String message;
  late bool success;
  StripeTransactionResponse({required this.message, required this.success});

}
class StripeService{
  static String apiBase ='https://api.stripe.com//v1';
  static String secret= '';


  static init(){

  }
  static  StripeTransactionResponse payViaExisitingCard({required String amount, required String currency, card}){
    return new StripeTransactionResponse(
      message: 'Transaction Sucessful', success: true);


  }

  static  StripeTransactionResponse payWithNewCard({required String amount, required String currency}){
    return new StripeTransactionResponse(
      message: 'Transaction Sucessful', success: true);
  }
}