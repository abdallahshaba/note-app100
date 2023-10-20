import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:note_app100/models/note_model.dart';
part 'add_note_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());



  addNote(NoteModel note){
    
  }
}
