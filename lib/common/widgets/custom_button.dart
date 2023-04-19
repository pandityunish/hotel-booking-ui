import 'package:flutter/material.dart';
import 'package:travelapp/common/constant/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  const CustomButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: kbuttoncolor
      ),
child: Center(
  child: Text(text,style:const TextStyle(color: Colors.white),),
),
    );
  }
}