import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:travelapp/common/constant/colors.dart';
import 'package:travelapp/common/widgets/special_button.dart';
import 'package:travelapp/features/home/screens/photo_gallery.dart';
import 'package:travelapp/features/home/screens/recently_booked_screen.dart';
import 'package:travelapp/features/home/widget/book_card.dart';
import 'package:travelapp/features/home/widget/review_card.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  List images = [
    "assets/images/img_rectangle7_100x140.png",
    "assets/images/img_rectangle8_100x140.png",
    "assets/images/img_rectangle10_140x182.png",
    "assets/images/img_rectangle11.png"
  ];
  AnimatedContainer buildDot({int? index, required int selectedindex}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 10),
      margin: const EdgeInsets.only(right: 5),
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        color: selectedindex == index ? kbuttoncolor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }

  int selectindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        color: ksecondarycolor,
        height: 70,
        width: Get.width,
        child: Padding(
          
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Text(
                    "\$34",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: kbuttoncolor),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    "/night",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                width: Get.width*0.7,
                child: SpecialButton(text: "Book Now", callback: () {
                  
                },),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: CarouselSlider.builder(
                    itemCount: images.length,
                    itemBuilder: (context, index, realIndex) {
                      return Stack(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(images[index]),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ],
                      );
                    },
                    options: CarouselOptions(
                      height: MediaQuery.of(context).size.height * 0.4,
                      aspectRatio: 20 / 8,
                      viewportFraction: 1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: false,
                      autoPlayInterval: Duration(seconds: 7),
                      onPageChanged: (index, reason) {
                        setState(() {
                          selectindex = index;
                        });
                      },
                      autoPlayAnimationDuration: Duration(milliseconds: 2000),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: Get.width * 0.45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      images.length,
                      (index1) =>
                          buildDot(index: index1, selectedindex: selectindex),
                    ),
                  ),
                ),
                Positioned(
                    top: 50,
                    child: SizedBox(
                      width: Get.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              )),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                    "assets/images/img_bookmark.svg"),
                                SizedBox(
                                  width: 5,
                                ),
                                SvgPicture.asset("assets/images/img_info.svg")
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Our Hotel",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/images/img_location.svg",
                        height: 30,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Nuwakot,Nepal",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Gallery Photos",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white)),
                      TextButton(
                          onPressed: () {
                           Get.to(PhotoGallery());
                          },
                          child: Text(
                            "See All",
                            style: TextStyle(color: kbuttoncolor),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: images.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Image.asset(images[index]),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text("Details",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          SvgPicture.asset("assets/images/img_frame_32x32.svg"),
                          Text(
                            "Hotels",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          SvgPicture.asset("assets/images/img_ticket.svg"),
                          Text(
                            "4 Bedrooms",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          SvgPicture.asset("assets/images/img_lock_32x32.svg"),
                          Text(
                            "2 Bathrooms",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          SvgPicture.asset(
                              "assets/images/img_facebook_32x32.svg"),
                          Text(
                            "4000 sqft",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 5),
                    child: Text("Description",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white)),
                  ),
                  Text(
                    "t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here',",
                    style: TextStyle(color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 5),
                    child: Text("Facilites",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Wrap(
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                runSpacing: 15,
                spacing: 25,
                children: [
                  Column(
                    children: [
                      SvgPicture.asset("assets/images/img_cut_cyan_600.svg"),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Swimming pool",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SvgPicture.asset(
                          "assets/images/img_cut_cyan_600_23x25.svg"),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Resturant",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SvgPicture.asset("assets/images/img_frame_cyan_600.svg"),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Elevator",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SvgPicture.asset("assets/images/img_offer.svg"),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Meeting Room",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SvgPicture.asset("assets/images/img_vector.svg"),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "24-hour open",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SvgPicture.asset("assets/images/img_signal_cyan_600.svg"),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Wifi",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SvgPicture.asset("assets/images/img_frame_cyan_600.svg"),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "2 Bathrooms",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SvgPicture.asset("assets/images/img_offer.svg"),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "4000 sqft",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
               child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("Reviews",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white)),
                                    SizedBox(
                                                width: 5,
                                              ),
                                    Row(
                                     
                                      children: [
                                         Icon(
                                                Icons.star,
                                                size: 15,
                                                color: Colors.yellow,
                                              ),
                                              SizedBox(
                                                width: 2,
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
             ),
             ReviewCard(image: "assets/images/img_ellipse1_48x48.png", name: "Jenny Wilson"),
             ReviewCard(image: "assets/images/img_ellipse_120x120_1.png", name: "Jon Man"),

             ReviewCard(image: "assets/images/img_ellipse_48x48_2.png", name: "Romi jr"),
             ReviewCard(image: "assets/images/img_ellipse_48x48_1.png", name: "Robot ham"),

            SizedBox(height: 70,)
          ],
        ),
      ),
    );
  }
}
