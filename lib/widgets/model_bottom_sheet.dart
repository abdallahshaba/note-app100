import 'package:flutter/material.dart';
import 'package:note_app100/widgets/custom_button.dart';
import 'package:note_app100/widgets/custom_text_field.dart';

class ModelBottomSheet extends StatelessWidget {
  const ModelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hintText: 'Title',
            ),
            SizedBox(height: 16,),
            CustomTextField(
              hintText: 'Content' ,
              maxLines: 4,
              ),
              SizedBox(height: 50,),
              CustomButton(),
              SizedBox(height: 16,),
          ],
        ),
      ),
    );
  }
}
