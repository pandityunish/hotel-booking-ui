import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widget/book_card.dart';

class RecentlyBookedScreen extends StatelessWidget {
  const RecentlyBookedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Recently Booked"),
        actions: [
          SvgPicture.asset("assets/images/img_qrcode.svg")
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children:const [
               BookedCard(image: "assets/images/img_rectangle4_100x100_3.png", name: "Our Kathmandu Hotel",
                   place: "Kathmandu,Nepal", price: "35"),
                    BookedCard(image: "assets/images/img_rectangle4_100x100_4.png", name: "Best Hotel",
                   place: "Pokhara,Nepal", price: "33"),
                   BookedCard(image: "assets/images/img_rectangle4_100x100_5.png", name: "Hotel Tirsuli",
                   place: "Nuwakot,Nepal", price: "30"),
                    BookedCard(image: "assets/images/img_rectangle5_120x140_5.png", name: "Majh Hotel",
                   place: "Nuwakot,Nepal", price: "20")
            ],
          ),
        ),
      ),
    );
  }
}