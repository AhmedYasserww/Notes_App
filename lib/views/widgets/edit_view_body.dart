import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_text_form_field_widget.dart';
import 'package:note_app/views/widgets/custum_appbar.dart';
class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 10,),
            CustomAppbar(text: "Edit Notes",icon: Icons.check,),
            SizedBox(height: 50,),
            CustomTextField(hintText: "Title"),
            SizedBox(height: 16,),
            CustomTextField(hintText: "Content",maxLine: 5,)
          ],
        ),
      ),
    );
  }
}
