import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:travelapp/common/constant/colors.dart';
import 'package:travelapp/common/widgets/special_button.dart';
import 'package:travelapp/features/auth/screens/reset_password.dart';

import '../../home/screens/bottom_navigation_screen.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  void showpopscreen(){
      Get.defaultDialog(
        content: Column(
          children: [

          ],
        )
      );
    }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Forgot Password"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          Image.asset("assets/images/img_image.png",height: Get.height*0.3,width: Get.width,),
          SizedBox(height: 10,),
          Text("Select which contact would you like to reset password",style: TextStyle(fontSize: 18,color: Colors.white),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              width: Get.width,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 94, 94, 94),
                border: Border.all(
                  color:kbuttoncolor ,
                  width: 3
                ),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  
                  children: [
                        Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 111, 112, 112)
                ),
                child: Center(
                  child: Icon(Icons.message_outlined,color: kbuttoncolor,),
                ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("via SMS:",style: TextStyle(color: Colors.white),),
                                        SizedBox(height: 5),
                                        Text("+9779828**0**1",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)
                                      ],
                          ),
                        )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              width: Get.width,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 94, 94, 94),
                border: Border.all(
                  color:kbuttoncolor ,
                  width: 3
                ),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  
                  children: [
                        Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 111, 112, 112)
                ),
                child: Center(
                  child: Icon(Icons.message_outlined,color: kbuttoncolor,),
                ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("via SMS:",style: TextStyle(color: Colors.white),),
                                        SizedBox(height: 5),
                                        Text("+9779828**0**1",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)
                                      ],
                          ),
                        )
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(ResetPassword());
            },
            child: SpecialButton(text: "Continue",callback: () {
              Get.to(BottomNavigationScreen());
            },))
            ],
          ),
        ),
      ),
    );
  }
}