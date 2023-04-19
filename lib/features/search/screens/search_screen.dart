import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp/features/home/widget/book_card.dart';

import '../../../common/constant/colors.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
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
                            width: Get.width * 0.3,
                            decoration: BoxDecoration(
                              color: kbuttoncolor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                "All Hotel",
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
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text("Recommended(382,343)",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                  ),
                   BookedCard(image: "assets/images/img_rectangle4_100x100_3.png", name: "Our Kathmandu Hotel",
                 place: "Kathmandu,Nepal", price: "35"),
                  BookedCard(image: "assets/images/img_rectangle4_100x100_4.png", name: "Best Hotel",
                 place: "Pokhara,Nepal", price: "33"),
                 BookedCard(image: "assets/images/img_rectangle4_100x100_5.png", name: "Hotel Tirsuli",
                 place: "Nuwakot,Nepal", price: "30"),
                  BookedCard(image: "assets/images/img_rectangle4_100x100_3.png", name: "Our Kathmandu Hotel",
                 place: "Kathmandu,Nepal", price: "35"),
                  BookedCard(image: "assets/images/img_rectangle4_100x100_4.png", name: "Best Hotel",
                 place: "Pokhara,Nepal", price: "33"),
                 BookedCard(image: "assets/images/img_rectangle4_100x100_5.png", name: "Hotel Tirsuli",
                 place: "Nuwakot,Nepal", price: "30"),
            ],
          ),
        ),
      )),
    );
  }
}