import 'package:flutter/material.dart';
import 'package:note_app100/widgets/custom_appBar.dart';
import 'package:note_app100/widgets/custom_text_field.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(
                height: 40,
              ),
            CustomAppBar(
              text: 'Edit Note',
              icon: Icons.check,
              
            ),
            SizedBox(height: 30,),
            CustomTextField(hintText: 'Caption'),
            SizedBox(height: 18,),
            CustomTextField(
              maxLines: 5,
              hintText: 'Content'),
          ],
        ),
      ),
    );
  }
}