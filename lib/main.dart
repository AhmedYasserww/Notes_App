import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/simple_bloc_observer.dart';
import 'package:note_app/views/notes_view.dart';
import 'constants.dart';

void main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();

  await Hive.initFlutter();

  Hive.registerAdapter(NoteModelAdapter());

  var box = await Hive.openBox<NoteModel>(kNotesBox);
 // await box.clear();  // This will clear all existing data

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
