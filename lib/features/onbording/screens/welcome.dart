import 'dart:async';

import 'package:flutter/material.dart';
import 'package:travelapp/common/constant/colors.dart';
import 'package:travelapp/common/widgets/custom_text.dart';
import 'package:travelapp/features/onbording/screens/onbording_screen.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  void initState() {
   Timer(const Duration(seconds: 3), () { 
    Navigator.push(context, MaterialPageRoute(builder: (context) =>const OnbordingScreen(),));
   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              decoration:const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/img_welcomescreen.png"),
                fit: BoxFit.cover)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height*0.67,),
                 const CustomText(text: "Welcome To"),
                const SizedBox(height: 5,),
                 const Text("Comfort",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: kprimarycolor),),
                  SizedBox(height: size.height*0.03,),
                const Text("The best hotel booking in this century to accompany your vacation",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.white),)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}