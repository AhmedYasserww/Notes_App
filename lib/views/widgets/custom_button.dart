import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
class CustomButton extends StatelessWidget {
   CustomButton({super.key,required this.text,this.onTap});
String  text;
   void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: kPrimaryColor
      ),
      alignment: Alignment.center,
      width:MediaQuery.of(context).size.width,
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          text,
          style: const TextStyle(fontSize: 22, color: Colors.black,fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
