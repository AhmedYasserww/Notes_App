
import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
class CustomTextField extends StatelessWidget {
   const CustomTextField({super.key,required this.hintText, this.maxLine=1,this.onSaved});

  final  String  hintText;
   final int  maxLine;
   final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {

      return TextFormField(
        onSaved:onSaved ,
        validator: (value){
          //ترو دى معناها ان هوا فعلا بnull
          if(value?.isEmpty ?? true){
            return 'field is required';
          }else{
            return null;
          }
        },
        cursorColor:kPrimaryColor ,
          maxLines: maxLine,
          decoration:InputDecoration(

              hintText: hintText,
              hintStyle:const TextStyle(color:kPrimaryColor,fontSize: 20),
      enabledBorder: buildBorder(),
           focusedBorder: buildBorder(kPrimaryColor),
            errorBorder: buildBorder(Colors.red),
            focusedErrorBorder: buildBorder(Colors.red),

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
