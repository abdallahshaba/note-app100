import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app100/cubit/add_note/add_note.dart';
import 'package:note_app100/widgets/note_form.dart';

class ModelBottomSheet extends StatelessWidget {
  const ModelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: BlocConsumer<NotesCubit, NotesState>(
        listener: (context, state) {
          if (state is NotesFailure) {
            print('Failed ${state.errerMessage}');
          }
          if (state is NotesSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is NotesLoading? true : false,
            child:  Padding(
              padding: EdgeInsets.only(left: 16 , right: 16 , 
              bottom: MediaQuery.of(context).viewInsets.bottom
              ),
              child: SingleChildScrollView(
                child: NoteForm()
                ),
            ),
            
          );
        },
      ),
    );
  }
}
