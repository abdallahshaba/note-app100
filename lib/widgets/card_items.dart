import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24 , bottom: 24 , left: 16 ),
      decoration: BoxDecoration(
        color: const Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text('Flutter Tips' , 
            style: TextStyle(fontSize: 28, color: Colors.black),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 8 , bottom: 16),
              child: Text("Build your career with abdallah shaban",
              style: TextStyle(fontSize: 16 , color: Colors.black.withOpacity(0.6)),
              ),
            ) ,
            trailing: IconButton(
              onPressed: (){},
               icon: const Icon(FontAwesomeIcons.trash , color: Colors.black,)
               ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text('May21 , 20223' , style: TextStyle(
              fontSize: 14 ,
             color: Colors.black.withOpacity(0.7)
            ),),
          )
        ],
      ),
    );
  }
}