import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_button.dart';
import 'package:note_app/views/widgets/custom_text_form_field_widget.dart';
class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey <FormState> formKey = GlobalKey();
  //ده بستخدمه علشان اظهرله لو هوا دخل انبوت غلط فى عمليه الفالديشن يعنى مثلا فى حاله الايميل لازم يدخل @ وكده
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  //طالما هعمل استرنج نالبول يبقى لازم يكون جوه state ful widget
  //انما جوه الstate less widget لازم تكون field
  String ? title  , content;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved:(value){
              title = value;
            },

            hintText: "Title",
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value){
              content = value;
            },
            hintText: "Content",
            maxLine: 5,
          ),
          const SizedBox(
            height: 32,
          ),

          CustomButton(
              onTap: (){
                //لازم اعمل validate
                if(formKey.currentState!.validate()){
                  formKey.currentState!.save();
                }
                else{
                  autoValidateMode = AutovalidateMode.always;
                }
                setState(() {

                });
              },
              text: "Add"),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}

