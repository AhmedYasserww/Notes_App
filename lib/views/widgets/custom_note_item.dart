import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/views/widgets/custom_note_icon.dart';
import 'package:note_app/views/widgets/custum_appbar.dart';
class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 10,),
            CustomAppbar(),
            SizedBox(height: 30,),
            NoteItem()

          ],
        ),
      ),
    );
  }
}
