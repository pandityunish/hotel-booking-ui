import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../common/constant/colors.dart';

class MyBookMarkScreen extends StatelessWidget {
  const MyBookMarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
        elevation: 0,
        title: Text("My Bookmark"),
        actions: [
         
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate:
                 SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                 childAspectRatio: 0.66,
                 crossAxisSpacing: 10,
                 mainAxisSpacing: 10
                 ),
                 itemCount: 8,
               itemBuilder: (context, index) {
                 return Container(
                       
                width: Get.width*0.5,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 109, 109, 109),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/img_rectangle4_100x100_4.png",fit: BoxFit.cover,),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                                        "Tirsuli Hotel",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.white),
                                      ),
                      ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 8),
                                      child: Row(
                                       
                                        children: [
                                           Icon(
                                                  Icons.star,
                                                  size: 15,
                                                  color: Colors.yellow,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  "4.5",
                                                  style: TextStyle(color: kbuttoncolor),
                                                ),
                                                 SizedBox(
                                                  width: 5,
                                                ),
                                                Text("Nuwakot,Nepal",style: TextStyle(color: Colors.white))
                                        ],
                                      ),
                                    ),
                                    Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: const[
                                        Text("\$34",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: kbuttoncolor),),
                                        SizedBox(width: 3,),
                                        Text("/night",style: TextStyle(color: Colors.white),),
                                      ],
                                    ),
                                    SvgPicture.asset("assets/images/img_bookmark_24x24.svg")
                                  ],
                                ),
                    ],
                  ),
                ),
              );
               },),
            )
          ],
        ),
      ),
    );
  }
}