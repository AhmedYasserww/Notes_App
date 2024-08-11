import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/color_item.dart';
import 'package:note_app/views/widgets/custom_text_form_field_widget.dart';
import 'package:note_app/views/widgets/custum_appbar.dart';

import '../../constants.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            CustomAppbar(
              onTap: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.content = content ?? widget.note.content;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
              text: "Edit Notes",
              icon: Icons.check,
            ),
            const SizedBox(
              height: 50,
            ),
            CustomTextField(
                onChange: (val) {
                  title = val;
                },
                hintText: widget.note.title),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
              onChange: (val) {
                content = val;
              },
              hintText: widget.note.content,
              maxLine: 5,
            ),
            const SizedBox(height: 16,),
             EditNoteColorsList(note:widget.note,)
          ],
        ),
      ),
    );
  }
}

class EditNoteColorsList extends StatefulWidget {
  const EditNoteColorsList({super.key,required this.note});
  final NoteModel note ;

  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {
  late int currentIndex ;

  @override
  @override
  void initState() {
    //هنا بيقوله خلى الاندكس كولر بيساوى الاندكس بتاع الكولر اللى جاى من النوت
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }
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
                  widget.note.color =kColors[i].value;
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
