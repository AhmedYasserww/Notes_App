import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/views/widgets/color_item.dart';

import '../../constants.dart';
class ColorItemListView extends StatefulWidget {
  const ColorItemListView({super.key});

  @override
  State<ColorItemListView> createState() => _ColorItemListViewState();
}

class _ColorItemListViewState extends State<ColorItemListView> {
  int  currentIndex =0  ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 82,
      child: ListView.builder(
          itemCount: kColors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,i){
            return  Padding(
              padding:  const EdgeInsets.only(right: 12),
              child:  GestureDetector(
                onTap: (){
                  currentIndex = i;
                  //انا هنا ببعت الون للكيوبت
                  BlocProvider.of<AddNoteCubit>(context).color=kColors[i];
                  setState(() {

                  });
                },
                child: ColorItem(
                  color: kColors[i],
                  isActive: currentIndex == i ,
                ),
              ),
            );
          }),
    );
  }
}