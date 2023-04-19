import 'package:flutter/material.dart';
import 'package:travelapp/common/constant/colors.dart';
import 'package:travelapp/common/widgets/custom_button.dart';
import 'package:travelapp/common/widgets/custom_text.dart';
import 'package:travelapp/features/auth/screens/login_screen.dart';

class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({super.key});

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "title": "Travel Safely,\n comfortably, & easily",
      "subtitle": "This is the best app for booking hotels in all over the world and also provides verious services",
      "image": "assets/images/img_rectangle1_420x428_1.png"
    },
    {
      "title": "Find the best hotels for\n your vacation",
      "subtitle":"This is the best app for booking hotels in all over the world and also provides verious services",
      "image": "assets/images/img_rectangle1_420x428_2.png"
    },
    {
      "title": "Let's discover the world\n with us",
      "subtitle":"This is the best app for booking hotels in all over the world and also provides verious services",
      "image": "assets/images/img_rectangle1_420x428_3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: PageView.builder(
              itemCount: splashData.length,
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemBuilder: (context, index) {
                return Column(
               children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.5,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(splashData[index]["image"]!),fit: BoxFit.cover)
                  ),
                ),
                SizedBox(height: 10,),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text(splashData[index]["title"]!,
                 textAlign: TextAlign.center,
                 style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.white,),),
               ),
               SizedBox(height: 3,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(splashData[index]["subtitle"]!,textAlign: TextAlign.center,
                               style:const TextStyle(color: Colors.white,)),
                )
               ],
                );
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    splashData.length,
                    (index) => buildDot(index: index),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.07,),
                InkWell(
                  onTap: () {
                   Navigator.pushNamed(context, LoginScreen.routeName);
                  },
                  child:const CustomButton(text: "Next"))
              ],
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration:const Duration(milliseconds: 10),
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kprimarycolor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
