import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custum_appbar.dart';
class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 10,),
            CustomAppbar(text: "Edit Notes",icon: Icons.check,)
          ],
        ),
      ),
    );
  }
}
