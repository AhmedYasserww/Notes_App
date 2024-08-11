import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/edit_note_view_body.dart';

import 'Alert_dialog_deleting.dart';
class NoteItem extends StatelessWidget {
  const  NoteItem({super.key,required this.noteModel});
final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context,MaterialPageRoute(builder: (context){
            return  EditNoteView(
              note: noteModel,
            );
          }));
        },
        child: Container(
          padding: const EdgeInsets.only(left: 16,top: 24,bottom: 24),
          color: Color(noteModel.color),

          child: Column(
            children: [
              ListTile(
                  title: Text(
                    noteModel.title,
                    style: const TextStyle(
                        fontSize: 26, fontWeight: FontWeight.w600),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      noteModel.content,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black.withOpacity(.6),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  textColor: Colors.black,
                  trailing: IconButton(
                    onPressed: () {
                      showDeleteConfirmationDialog(context, noteModel);
                    },
                    icon: const Icon(
                      FontAwesomeIcons.trash,
                      color: Colors.black,
                      size: 30,
                    ),
                  )),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 24),
                    child: Text(
                      noteModel.date,
                      style: TextStyle(
                          color: Colors.black.withOpacity(.5), fontSize: 18),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }

}
