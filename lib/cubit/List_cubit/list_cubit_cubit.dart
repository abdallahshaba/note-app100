import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app100/models/note_model.dart';

import '../../constans.dart';

part 'list_cubit_state.dart';

class ListCubit extends Cubit<ListCubitState> {
  ListCubit() : super(ListCubitInitial());

  fectAllNotes() async {
  try {
  var noteBox = Hive.box<NoteModel22>(kNoteBox);
  List<NoteModel22> notes = noteBox.values.toList();
  emit(ListCubitSuccess(notes));
 }  catch (e) {
  emit(ListCubitFailure(e.toString()));
 }
  }
  }
