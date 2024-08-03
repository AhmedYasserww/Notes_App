
import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
class CustomTextField extends StatelessWidget {
   const CustomTextField({super.key,required this.hintText, this.maxLine=1});

  final  String  hintText;
   final int  maxLine;

  @override
  Widget build(BuildContext context) {

      return TextFormField(
        cursorColor:kPrimaryColor ,
          maxLines: maxLine,
          decoration:InputDecoration(

              hintText: hintText,
              hintStyle:const TextStyle(color:kPrimaryColor,fontSize: 20),
      enabledBorder: buildBorder(),
           focusedBorder: buildBorder(kPrimaryColor),

          )
      );

  }
   OutlineInputBorder buildBorder([color]){
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white,width: 1.2),
    );
   }
}
