import 'package:flutter/cupertino.dart';
import 'package:note_app100/widgets/custom_button.dart';
import 'package:note_app100/widgets/custom_text_field.dart';

class NoteForm extends StatefulWidget {
  const NoteForm({
    super.key,
  });

  @override
  State<NoteForm> createState() => _NoteFormState();
}

class _NoteFormState extends State<NoteForm> {
  final GlobalKey<FormState> globalKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled ;
  String? title , subtitle ;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
      child:  Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value ;
            },
            hintText: 'Title',
          ),
          const SizedBox(height: 16,),
          CustomTextField(
            onSaved: (value) {
              subtitle = value ;
            },
            hintText: 'Content' ,
            maxLines: 4,
            ),
           const SizedBox(height: 50,),
            CustomButton(
            onTap: () {
              if(globalKey.currentState!.validate()){
                globalKey.currentState!.save();
              }
              else{
                autovalidateMode = AutovalidateMode.always ;
                setState(() {
                });
              }
            },
           ),
           const SizedBox(height: 16,),
        ],
      ),
    );
  }
}
