import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_search_icon.dart';
class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key,required this.text,required this.icon});
  final String text ;
  final IconData icon;


  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text ,style: const TextStyle(fontWeight: FontWeight.w400,fontSize:28),),
       CustomSearchIcon(icon:icon,)
        ],),
    );
  }
}
// iconFontAwesomeIcons.magnifyingGlass