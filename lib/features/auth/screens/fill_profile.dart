import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp/common/constant/colors.dart';
import 'package:travelapp/common/widgets/special_button.dart';
import 'package:travelapp/features/auth/widgets/custom_textfield.dart';

import '../../home/screens/bottom_navigation_screen.dart';

class FillProfileScreen extends StatelessWidget {
  const FillProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Fill Your Profile"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
               CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/images/img_ellipse_140x140.png"),
               ),
               Positioned(
                bottom: 0,
                right: 10,
                child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: kbuttoncolor,
                  borderRadius: BorderRadius.circular(4)
                ),
                child: Center(
                  child: Icon(Icons.edit),
                ),
               ))
              ],
            ),
            SizedBox(height: 10,),
            CustomTextformfield1(hintText: "Full Name", textInputType: TextInputType.name),
            CustomTextformfield1(hintText: "Nickname", textInputType: TextInputType.name),
            CustomTextformfield1(hintText: "Phonenumber", textInputType: TextInputType.number),
            CustomTextformfield1(hintText: "Date Of Birth", textInputType: TextInputType.datetime),
            CustomTextformfield1(hintText: "Email", textInputType: TextInputType.emailAddress),
            CustomTextformfield1(hintText: "Gender", textInputType: TextInputType.name),
            SizedBox(height: 20,),
            SpecialButton(text: "Continue",callback: () {
              Get.to(BottomNavigationScreen());
            },)
          ],
        ),
      ),
    );
  }
}