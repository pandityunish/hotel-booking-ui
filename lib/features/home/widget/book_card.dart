import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../common/constant/colors.dart';

class BookedCard extends StatelessWidget {
  final String image;
  final String name;
  final String place;
  final String price;
  const BookedCard({super.key, required this.image, required this.name, required this.place, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
                    height: Get.height * 0.18,
                    width: Get.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 129, 129, 129)),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Image.asset(
                            image,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: Get.height * 0.09,
                              width: Get.width*0.4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    name,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    place,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        color: Colors.white),
                                  ),
                                  Row(
                                   
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
                                              style: TextStyle(color: Colors.white),
                                            ),
                                             SizedBox(
                                              width: 5,
                                            ),
                                            Text("(4596 reviews)",style: TextStyle(color: Colors.white))
                                    ],
                                  ),
    
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: SizedBox(
                                height: Get.height * 0.1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("\$${price}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: kbuttoncolor),),
                                  Text("/night",style: TextStyle(color: Colors.white),),
                                  SvgPicture.asset("assets/images/img_bookmark_24x24.svg")
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
    );
  }
}