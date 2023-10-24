import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app100/cubit/add_note/add_note.dart';
import 'package:note_app100/widgets/note_form.dart';

class ModelBottomSheet extends StatelessWidget {
  const ModelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: BlocConsumer<NotesCubit, NotesState>(
          listener: (context, state) {
            if(state is NotesFailure){
              print('Failed ${state.errerMessage}');
            }
            if(state is NotesSuccess){
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is NotesLoading? true : false ,
              child: const NoteForm());
          },
        ),
      ),
    );
  }
}
