import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp/common/widgets/special_button.dart';
import 'package:travelapp/features/auth/widgets/custom_textfield.dart';
import 'package:travelapp/features/home/screens/bottom_navigation_screen.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        elevation: 0,
        title: Text("Forgot Password"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/img_image_300x300.png",height: Get.height*0.3,width: Get.width,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Create Your New Password",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 18,),strutStyle: StrutStyle(leading: 2),),
            ),
            CustomTextformfield(hintText: "New password", icon: Icons.lock
            ),
              CustomTextformfield(hintText: "Confirm password", icon: Icons.lock
            ),
            SizedBox(height: 40,),
            SpecialButton(text: "Continue",callback: () {
              Get.to(BottomNavigationScreen());
            },)
          ],
        ),
      ),
    );
  }
}