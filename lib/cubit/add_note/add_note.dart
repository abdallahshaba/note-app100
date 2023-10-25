import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:note_app100/constans.dart';
import 'package:note_app100/models/note_model.dart';
part 'add_note_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  addNote(NoteModel22 model)async{
    emit(NotesLoading());
  try {
  var noteBox = Hive.box<NoteModel22>(kNoteBox);
  await noteBox.add(model);
  emit(NotesSuccess());
 }  catch (e) {
  emit(NotesFailure(e.toString()));
 }
  }

  // add<T>(T name){
  //   return name ;
  // }
}


