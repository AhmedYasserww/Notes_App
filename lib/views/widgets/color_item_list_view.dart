import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/views/widgets/color_item.dart';
class ColorItemListView extends StatefulWidget {
  const ColorItemListView({super.key});

  @override
  State<ColorItemListView> createState() => _ColorItemListViewState();
}

class _ColorItemListViewState extends State<ColorItemListView> {
  int  currentIndex =0  ;
  List<Color> colors = const[
    Color(0xFF00BCD4),
    Color(0xFFFFAB91), // Light Coral
    Color(0xFFFF8A65), // Coral
    Color(0xFFFF7043), // Dark Coral
    Color(0xFFBF360C), // Burnt Orange
    Color(0xFFDD2C00), // Red-Orange
    Color(0xFFB71C1C), // Dark Red
    Color(0xFFC62828), // Red
    Color(0xFFD32F2F), // Bright Red
    Color(0xFFE57373), // Light Red
    Color(0xFFEF9A9A), // Very Light Red
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 82,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,i){
            return  Padding(
              padding:  const EdgeInsets.only(right: 12),
              child:  GestureDetector(
                onTap: (){
                  currentIndex = i;
                  //انا هنا ببعت الون للكيوبت
                  BlocProvider.of<AddNoteCubit>(context).color=colors[i];
                  setState(() {

                  });
                },
                child: ColorItem(
                  color: colors[i],
                  isActive: currentIndex == i ,
                ),
              ),
            );
          }),
    );
  }
}