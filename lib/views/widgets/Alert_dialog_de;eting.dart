import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';

import '../../models/note_model.dart';

showDeleteConfirmationDialog(BuildContext context, NoteModel noteModel) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Delete Note"),
        content: const Text("Are you sure you want to delete this note?"),
        actions: <Widget>[
          TextButton(
            child: const Text("Cancel"),
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
          ),
          TextButton(
            child: const Text("Delete"),
            onPressed: () {
              noteModel.delete();
             BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.of(context).pop();

              // Show success message
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Note deleted successfully",style: TextStyle(fontSize: 16),),
                  duration: Duration(seconds: 2),
                ),
              );
            },
          ),
        ],
      );
    },
  );
}

