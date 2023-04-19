// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:travelapp/common/constant/colors.dart';
import 'package:get/get.dart';
class SpecialButton extends StatelessWidget {
  final String text;
  final VoidCallback callback;
  const SpecialButton({
    Key? key,
    required this.text, required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: callback,
        child: Container(
          height: 60,
          width: Get.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: kbuttoncolor
          ),
        child: Center(
        child: Text(text,style:const TextStyle(color: Colors.white,fontSize: 18),),
         ),
        ),
      ),
    );
  }
}
