import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app100/constans.dart';
import 'package:note_app100/models/note_model.dart';
import 'package:note_app100/pages/home_page.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNoteBox);
  Hive.registerAdapter(NoteModelAdapter());
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