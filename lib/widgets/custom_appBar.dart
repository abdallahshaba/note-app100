import 'package:flutter/material.dart';
import 'package:note_app100/widgets/serach_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(height: 100,),
        Text("Notes" , style: TextStyle(
          fontSize: 32 , color: Colors.white , 
          fontWeight: FontWeight.bold
        ),),
        Spacer(),
        SearchIcon(),
      ],
    );
  }
}

