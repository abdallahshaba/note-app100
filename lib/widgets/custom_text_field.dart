import 'package:flutter/material.dart';
import 'package:note_app100/constans.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.maxLines = 1});
   final String hintText ;
   final int maxLines ;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
     cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12)
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: kPrimaryColor),
          borderRadius: BorderRadius.circular(12)
        )
      ),
    );
  }
}