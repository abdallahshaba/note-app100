import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text, required this.icon});
  final String text ;
  final IconData icon ;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text , style: TextStyle(
          fontSize: 32 , fontWeight: FontWeight.bold
        ),),
        Spacer(),
      Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(0.05)),
        child: IconButton(
          onPressed: (){}, icon: Icon(icon)
          )
    )
      ],
    );
  }
}
