import 'package:flutter/material.dart';
import 'package:note_app100/widgets/home_body.dart';
import 'package:note_app100/widgets/model_bottom_sheet.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
      onPressed: (){
        showModalBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
          ),
          context: context,
           builder: (context){
            return const ModelBottomSheet();
           });
      },
      child: const Icon(Icons.add),
      ),
      body: const HomeBody(),
    );
  }
}


