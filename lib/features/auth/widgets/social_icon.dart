import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelapp/common/constant/colors.dart';

class SocialIcon extends StatelessWidget {
  final String icons;
  const SocialIcon({super.key, required this.icons});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ktextformcolor
      ),
      child: Center(
        child:SvgPicture.asset(icons,),
      ),
    );
  }
}