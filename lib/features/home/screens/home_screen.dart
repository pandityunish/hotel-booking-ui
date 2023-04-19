import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:travelapp/features/home/screens/details_screen.dart';
import 'package:travelapp/features/home/screens/mybookmark_screen.dart';
import 'package:travelapp/features/home/screens/notification_screen.dart';
import 'package:travelapp/features/home/screens/recently_booked_screen.dart';
import 'package:travelapp/features/home/widget/book_card.dart';

import '../../../common/constant/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/images/img_google.svg",
                          height: 40,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Comfort",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(NotificationScreen());
                          },
                          child: SvgPicture.asset(
                            "assets/images/img_alarm.svg",
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(MyBookMarkScreen());
                          },
                          child: SvgPicture.asset(
                            "assets/images/img_bag.svg",
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.04,
                ),
                Text('Hello,Yunish 👋',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white)),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 141, 141, 141),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.search,
                    decoration: const InputDecoration(
                        suffixIcon: Icon(
                          Icons.close,
                          color: Color.fromARGB(255, 207, 207, 207),
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color.fromARGB(255, 207, 207, 207),
                        ),
                        border: InputBorder.none,
                        hintText: "Search",
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 207, 207, 207)),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 18)),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                SizedBox(
                  height: 55,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 35,
                          width: Get.width * 0.4,
                          decoration: BoxDecoration(
                            color: kbuttoncolor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              "Recommended",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: Get.height * 0.45,
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: InkWell(
                          onTap: () {
                            Get.to(DetailsScreen());
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: Get.height * 0.48,
                                width: Get.width * 0.75,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/img_rectangle3_400x300_1.png"),
                                        fit: BoxFit.cover)),
                              ),
                              Positioned(
                                  right: Get.width * 0.08,
                                  top: Get.height * 0.06,
                                  child: Container(
                                    height: 30,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: kbuttoncolor),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "4.5",
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Positioned(
                                  bottom: 10,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: SizedBox(
                                      height: Get.height * 0.1,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Our Kathmandu Hotel",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            "Kathmandu,Nepal ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 17,
                                                color: Colors.white),
                                          ),
                                          SizedBox(
                                            width: Get.width * 0.63,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                RichText(
                                                    text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "\$29/",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 25)),
                                                  TextSpan(
                                                      text: "per night",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 17))
                                                ])),
                                                SvgPicture.asset(
                                                    "assets/images/img_bookmark.svg")
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Recently Booked",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white)),
                    TextButton(
                        onPressed: () {
                          Get.to(RecentlyBookedScreen());
                        },
                        child: Text(
                          "See All",
                          style: TextStyle(color: kbuttoncolor),
                        ))
                  ],
                ),
                BookedCard(image: "assets/images/img_rectangle4_100x100_3.png", name: "Our Kathmandu Hotel",
                 place: "Kathmandu,Nepal", price: "35"),
                  BookedCard(image: "assets/images/img_rectangle4_100x100_4.png", name: "Best Hotel",
                 place: "Pokhara,Nepal", price: "33"),
                 BookedCard(image: "assets/images/img_rectangle4_100x100_5.png", name: "Hotel Tirsuli",
                 place: "Nuwakot,Nepal", price: "30"),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
