import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:travelapp/common/constant/colors.dart';
import 'package:travelapp/common/widgets/custom_button.dart';
import 'package:travelapp/common/widgets/custom_text.dart';
import 'package:travelapp/common/widgets/special_button.dart';
import 'package:travelapp/features/auth/screens/fill_profile.dart';
import 'package:travelapp/features/auth/screens/forgot_password.dart';
import 'package:travelapp/features/auth/widgets/custom_textfield.dart';
import 'package:travelapp/features/auth/widgets/social_icon.dart';

import '../../home/screens/bottom_navigation_screen.dart';

class LoginScreen extends ConsumerStatefulWidget {
  static const String routeName="/login-screen";
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.width*0.13,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomText(text: "Login to your"),
            ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomText(text: "Account"),
            ),
            SizedBox(height: 30,),
            CustomTextformfield(hintText: "Email", icon: Icons.mail),
            CustomTextformfield(hintText: "Password", icon: Icons.lock),
                SizedBox(height: 30,),
            SpecialButton(text: "Sign in",callback: () {
              Get.to(BottomNavigationScreen());
            },),
            Align(
              alignment: Alignment.center,
              child: TextButton(onPressed: () {
                Get.to(ForgotPassword());
              }, child: Text("Forgot the Password?",style: TextStyle(color: kbuttoncolor),)),
            ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 8),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: 100,height: 1,color: ktextformcolor,),
                Text("or continue with",style: TextStyle(color: Colors.white,fontSize: 18),),
                Container(width: 100,height: 1,color: ktextformcolor,),
               
              ],
             ),
           ),
           SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SocialIcon(icons: "assets/images/img_facebook.svg"),
                    SocialIcon(icons: "assets/images/img_google_24x24.svg"),
                    SocialIcon(icons: "assets/images/img_frame.svg")
                  ],
                ),
                           SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an Account?",style: TextStyle(color: Colors.white),),
                    TextButton(onPressed: () {
                      Get.to(FillProfileScreen());
                    }, child: Text("Sign Up",style: TextStyle(color: kbuttoncolor),))
                  ],
                )
          ],
        ),
      ),
    );
  }
}