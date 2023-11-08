import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app100/cubit/List_cubit/list_cubit_cubit.dart';
import 'package:note_app100/models/note_model.dart';

import 'card_items.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListCubit, ListState>(
      builder: (context, state) {
        List<NoteModel22> listtt = BlocProvider.of<ListCubit>(context).nottt?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 9),
          child: ListView.builder(
            itemCount: listtt.length ,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 6),
                child: CardItem(), 
              );
            },
          ),
        );
      },
    );
  }
}
