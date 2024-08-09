import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomButton extends StatelessWidget {
   CustomButton({super.key,required this.text,this.onTap,this.isLoading = false});
String  text;
   void Function()? onTap;
   final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kPrimaryColor
        ),
        alignment: Alignment.center,
        width:MediaQuery.of(context).size.width,
        child: isLoading ? SizedBox(
          height: 28,
          width: 28,
          child: const CircularProgressIndicator(
            color: Colors.black,

          ),
        ) : Text(
          text,
          style: const TextStyle(fontSize: 22, color: Colors.black,fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
