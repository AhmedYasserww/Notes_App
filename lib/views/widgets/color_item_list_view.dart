import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/color_item.dart';
class ColorItemListView extends StatelessWidget {
  const ColorItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,i){
            return const ColorItem();
          }),
    );
  }
}