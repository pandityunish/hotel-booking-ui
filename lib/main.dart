import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travelapp/common/constant/router.dart';
import 'package:travelapp/common/splash_screen.dart';
import 'package:get/get.dart';
import 'package:travelapp/features/home/screens/bottom_navigation_screen.dart';
void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        appBarTheme:const AppBarTheme(backgroundColor:const Color.fromARGB(255, 61, 61, 61) ),
     primaryColor:const Color.fromARGB(255, 54, 54, 54),
     scaffoldBackgroundColor:const Color.fromARGB(255, 61, 61, 61),
      ),
      
      routes: routes,
      
      home:const SplashScreen(),
    );
  }
}

