import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
Color color = const Color(0xFFFFAB91);
  addNote(NoteModel note) async {
    note.color = color!.value;//علشان انتجر
    print('AddNoteCubit: Adding note...');
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      print('AddNoteCubit: Note added successfully.');
      emit(AddNoteSuccess());
    } catch (e) {
      print('AddNoteCubit: Failed to add note - $e');
      emit(AddNoteFailure(errorMessage: e.toString()));
    }
  }
}

