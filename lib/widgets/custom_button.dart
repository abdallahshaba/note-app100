import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap,  this.isLoading = false});
  final void Function()? onTap ; 
  final bool isLoading ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 40,
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xff62FCD7)
        ),
        child:  Center(
          child: isLoading? const SizedBox(
            height: 22,
            width: 22,
            child:  CircularProgressIndicator(
              color: Colors.black,
            ),
          ) : const Text(
            "Add" ,
             style: TextStyle(
            color: Colors.black , fontWeight: FontWeight.bold ,
            fontSize: 18
          ),),
        ),
      ),
    );
  }
}
