import 'package:flutter/material.dart';
class ColorItem extends StatelessWidget {
  const ColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 12),
      child: const CircleAvatar(
        radius: 40,
        backgroundColor: Colors.cyan,
      ),
    );
  }
}