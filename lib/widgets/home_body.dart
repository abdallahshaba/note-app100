import 'package:flutter/material.dart';
import 'custom_appBar.dart';
import 'list_view.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child:  Column(
        children: [
          CustomAppBar(),
          Expanded(child: NoteListView())
        ],
      ),
    );
  }
}




