import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app100/models/note_model.dart';

import '../../constans.dart';

part 'list_cubit_state.dart';

class ListCubit extends Cubit<ListState> {
  ListCubit() : super(ListCubitInitial());
  List<NoteModel22>? nottt ;
  fectAllNotes(){

  var noteBox = Hive.box<NoteModel22>(kNoteBox);
  nottt = noteBox.values.toList();
  }
  }
