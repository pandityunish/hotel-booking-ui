import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/constant/colors.dart';

class ReviewCard extends StatelessWidget {
  final String image;
  final String name;
  const ReviewCard({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
               child: Container(
                
                width: Get.width,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 109, 109, 109),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage(image),
                              ),
                              SizedBox(width: 5,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
                                    Text("Dec 11,2032",style: TextStyle(color: Colors.white),)
                                ],
                              ),
                            ],
                          ),
                          Container(
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: kbuttoncolor
                            ),
                            child: Center(
                              child: Row(

                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.star,color: Colors.white,size: 25,),
                                  Text("5",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text("Very good and comfortable hotel, thank you for your service by giving great food.",style: TextStyle(color: Colors.white),)
                    ],
                  ),
               ),
             );
  }
}