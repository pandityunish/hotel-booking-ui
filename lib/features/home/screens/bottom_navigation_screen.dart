import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelapp/common/constant/colors.dart';
import 'package:travelapp/features/home/screens/home_screen.dart';
import 'package:travelapp/features/search/screens/search_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  List<Widget> children=[
  const HomeScreen(),
   const SearchScreen(),
    Text("booking"),
    Text("Profile")
  ];
  int index=0;
  void selectindex(int i){
setState(() {
  index=i;
});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectindex,
        currentIndex: index,
       elevation: 0,
        unselectedItemColor: ksecondarycolor,
        backgroundColor: ksecondarycolor,
        type: BottomNavigationBarType.fixed,

        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        selectedLabelStyle: TextStyle(color: Colors.white),
        unselectedLabelStyle: TextStyle(color: Colors.white),
        items: [
          BottomNavigationBarItem(
            backgroundColor: ksecondarycolor,
            label: "Home",
            icon: SvgPicture.asset("assets/images/img_home_gray_500.svg")),
            BottomNavigationBarItem(
               backgroundColor: ksecondarycolor,
            label: "Search",
            icon: SvgPicture.asset("assets/images/img_search_gray_500.svg")),
            BottomNavigationBarItem(
               backgroundColor: ksecondarycolor,
            label: "Booking",
            icon: SvgPicture.asset("assets/images/bookmar.svg",height:30 ,)),
            BottomNavigationBarItem(
               backgroundColor: ksecondarycolor,
            label: "Profile",
            icon: SvgPicture.asset("assets/images/img_user_24x24.svg"))
        ]),
    );
  }
}