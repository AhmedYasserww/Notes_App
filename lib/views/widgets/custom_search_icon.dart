import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key,required this.icon});
  final IconData icon ;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          color: Colors.white.withOpacity(.12),
          height: 45,
          width: 45,
          child: IconButton(
              onPressed: () {},
              icon:  Icon(icon)),
        ));
  }
}
