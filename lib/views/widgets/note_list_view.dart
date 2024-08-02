import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_note_item.dart';
class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 10,
          itemBuilder: (context,i){
            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: NoteItem(),
            );
          }),
    );
  }
}