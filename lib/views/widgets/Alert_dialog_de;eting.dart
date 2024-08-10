import 'package:flutter/material.dart';

import '../../models/note_model.dart';

void showDeleteConfirmationDialog(BuildContext context, NoteModel noteModel) {
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
              noteModel.delete(); // Perform delete operation
              Navigator.of(context).pop(); // Close the dialog

              // Show success message
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Note deleted successfully"),
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
