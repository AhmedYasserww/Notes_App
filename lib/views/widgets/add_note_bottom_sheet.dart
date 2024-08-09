import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/views/widgets/add_note_form.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context)=>AddNoteCubit(),
      child: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 16),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {
              print('Failed to add note: ${state.errorMessage}');
            }
            if (state is AddNoteSuccess) {
              print('Note added successfully, closing bottom sheet.');
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return AbsorbPointer(

              absorbing: state is AddNoteLoading ?true : false,
                child: Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: const SingleChildScrollView(child: AddNoteForm()),
                ));
          },
        ),
      ),
    );
  }
}


