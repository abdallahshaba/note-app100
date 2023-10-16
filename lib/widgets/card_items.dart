import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app100/pages/edit_note_page.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key,});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return  EditNoteBody();
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 20 , bottom: 15 , 
        left: 10),
        decoration: BoxDecoration(
          color: const Color(0xffFFCC80) , 
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text("Flutter Tips" , style: TextStyle(
                color: Colors.black ,
                fontSize: 28,
              ),),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text("Build your career with abdallah shaban" ,
                 style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 119, 21, 14).withOpacity(.6)
                ),
                ),
              ),
              trailing: IconButton(
                onPressed: (){}, 
                icon: const Icon(
                  FontAwesomeIcons.trash , color: Colors.black,
                ),),
                
            ),
          Padding(
            padding: const EdgeInsets.only(right: 30 , top: 15),
            child: Text("May21 , 2023" , style: TextStyle(
              fontSize: 16,
              color: Colors.black.withOpacity(.7)
            ),),
          )
          
          ],
        ),
      ),
    );
  }
}