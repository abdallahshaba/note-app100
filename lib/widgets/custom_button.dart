import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap});
  final void Function()? onTap ; 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 40,
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xff62FCD7)
        ),
        child: const Center(
          child: Text("Add" , style: TextStyle(
            color: Colors.black , fontWeight: FontWeight.bold ,
            fontSize: 18
          ),),
        ),
      ),
    );
  }
}
