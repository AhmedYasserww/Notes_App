import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_button.dart';
import 'package:note_app/views/widgets/custom_text_form_field_widget.dart';
class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              CustomTextField(
                hintText: "Title",
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextField(
                hintText: "Content",
                maxLine: 5,
              ),
              const SizedBox(
                height: 32,
              ),

              CustomButton(text: "Add"),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
      ),
      );
  }
}

