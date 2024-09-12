import 'package:flutter/material.dart';

 appSnackBar ({required BuildContext context, required String message}){
  print('Message: $message');
  return ScaffoldMessenger.of(context).showSnackBar( SnackBar(content: Text(message)));
}