import 'package:flutter/cupertino.dart';

import 'card_items.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const Padding(
        padding:  EdgeInsets.symmetric(vertical: 6),
        child: CardItem(),
      );
    },);
  }
}