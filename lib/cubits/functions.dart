import 'package:flutter/material.dart';
void showActionMessage(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message,style:const TextStyle(fontSize: 18),),
      duration: const Duration(seconds: 2),
    ),
  );
}