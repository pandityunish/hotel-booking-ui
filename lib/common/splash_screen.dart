import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelapp/features/onbording/screens/welcome.dart';

class SplashScreen extends ConsumerStatefulWidget {
  static const String routeName="/splash-screen";
  const SplashScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
@override
  void initState() {
   Timer(const Duration(seconds: 3), () { 
    Navigator.push(context, MaterialPageRoute(builder: (context) =>const Welcome(),));
   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Align(
          alignment: Alignment.center,
          child: SvgPicture.asset("assets/images/img_group158.svg")),

      

        ],
      ),
    );
  }
}