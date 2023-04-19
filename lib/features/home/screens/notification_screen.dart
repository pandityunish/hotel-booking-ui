import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:travelapp/common/constant/colors.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Notification"),
        actions: [
          IconButton(onPressed: () {
            
          }, icon:const Icon(Icons.notifications))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Text("Today",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 110,
                width: Get.width,
                decoration: BoxDecoration(
                  color:Color.fromARGB(255, 129, 129, 129) ,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/images/img_lightbulb.svg"),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Payment Successfully",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        Text("Our Hotel booking was successfully",maxLines: 2,overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Colors.white),)
            
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}