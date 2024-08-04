import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/notes_view.dart';
import 'constants.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
   Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());

}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
//ممكن كده وممكن حاجه تانيه
      //theme: ThemeData.dark(),
      theme: ThemeData(
        brightness:Brightness.dark,
        fontFamily: "Poppins"

      ),
      home:const NotesView()

    );
  }
}

