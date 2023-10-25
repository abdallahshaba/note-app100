import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app100/constans.dart';
import 'package:note_app100/cubit/add_note/add_note.dart';
import 'package:note_app100/models/note_model.dart';
import 'package:note_app100/pages/home_page.dart';
import 'package:note_app100/simple_bloc_observer.dart';

void main() async {
  Bloc.observer = MyBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel22>(kNoteBox);
  runApp(const NotesApp());
}
class NotesApp extends StatelessWidget {
  const NotesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp
    (
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark ,
        fontFamily: 'Poppins'
      ),
      home: const HomePage(),
    );
  }
}