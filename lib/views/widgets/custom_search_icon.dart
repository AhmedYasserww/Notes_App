import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key,required this.icon,this.onTap});
  final IconData icon ;
 final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          color: Colors.white.withOpacity(.12),
          height: 45,
          width: 45,
          child: IconButton(
              onPressed:onTap,
              icon:  Icon(icon)),
        ));
  }
}
