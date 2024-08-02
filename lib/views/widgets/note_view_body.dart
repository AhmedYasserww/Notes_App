import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/add_note_bottom_sheet.dart';
import 'package:note_app/views/widgets/custum_appbar.dart';
import 'package:note_app/views/widgets/note_list_view.dart';
class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyan,
        shape:const CircleBorder(),
        onPressed: () {
          showModalBottomSheet(context: context, builder:(context)
          {
            return const AddNoteBottomSheet();
          });
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),

      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
             SizedBox(height: 10,),
           CustomAppbar(),
           // SizedBox(height: 16,),
            Expanded(child: NotesListView())

          ],
        ),
      ),
    );
  }
}
