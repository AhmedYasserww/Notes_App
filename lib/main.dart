import 'package:flutter/material.dart';
import 'package:note_app/views/notes_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
//ممكن كده وممكن حاجه تانيه
      //theme: ThemeData.dark(),
      theme: ThemeData(brightness:Brightness.dark,

      ),
      home:const NotesView()

    );
  }
}

