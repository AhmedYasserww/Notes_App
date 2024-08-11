import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_search_icon.dart';
class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key,required this.text,required this.icon,this.onTap});
  final String text ;
  final IconData icon;
  final void Function()? onTap;


  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text ,style: const TextStyle(fontWeight: FontWeight.w400,fontSize:28),),
       CustomSearchIcon(
         onTap: onTap,
         icon:icon,)
        ],),
    );
  }
}
// iconFontAwesomeIcons.magnifyingGlass