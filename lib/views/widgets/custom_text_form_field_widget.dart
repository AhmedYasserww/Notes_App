
import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
class CustomTextField extends StatelessWidget {
   CustomTextField({super.key,required this.hintText,this.contentPadding,this.maxLine=1});
   double ? contentPadding;
  final  String  hintText;
   int  maxLine;

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

           contentPadding:   EdgeInsets.symmetric(vertical:contentPadding??20,horizontal: 20 ),
          )
      );

  }
   OutlineInputBorder buildBorder([color]){
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white,width: 1.3),
    );
   }
}
