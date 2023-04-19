
import 'package:flutter/material.dart';
import 'package:travelapp/common/constant/colors.dart';

class CustomTextformfield extends StatelessWidget {
  final String hintText;
  final IconData icon; 
  const CustomTextformfield({super.key, required this.hintText, required this.icon});

  @override
  Widget build(BuildContext context) {
    return  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: ktextformcolor,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: TextFormField(
                  
                  decoration: InputDecoration(
                    prefixIcon: Icon(icon),
                    border: InputBorder.none,
                    hintText: hintText,
                    contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 18)
                  ),
                ),
              ),
            );
  }
}
class CustomTextformfield1 extends StatelessWidget {
  final String hintText;

  final TextInputType textInputType;
  const CustomTextformfield1({super.key, required this.hintText, required this.textInputType});

  @override
  Widget build(BuildContext context) {
    return  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: ktextformcolor,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: TextFormField(
                  keyboardType:textInputType ,
                  decoration: InputDecoration(
                    
                    border: InputBorder.none,
                    hintText: hintText,
                    contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 18)
                  ),
                ),
              ),
            );
  }
}