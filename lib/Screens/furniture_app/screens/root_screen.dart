import 'package:flutter/material.dart';
import 'package:nazri_funiture_shop/Screens/furniture_app/screens/cart_screen.dart';
import 'package:nazri_funiture_shop/Screens/furniture_app/screens/home_screen.dart';
import 'package:nazri_funiture_shop/Screens/furniture_app/screens/profile_screen.dart';
import 'package:nazri_funiture_shop/Screens/furniture_app/screens/qr_code_scanner.dart';
import 'package:nazri_funiture_shop/Screens/furniture_app/screens/search_screen.dart';
import 'package:nazri_funiture_shop/constants/color.dart';

import '../../../constants/dummy_data.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {

  int activeNavItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: activeNavItem,
        children: const [
          HomeScreen(),
          SearchScreen(),
          QrCodeScanner(),
          CartScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: getBottomNavigation(),
    ); 
  }

  Widget getBottomNavigation(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            bottomNavItems.length, 
            (index) => GestureDetector(
              onTap: () => setState(() {
                activeNavItem = index;
              }),
              child: Icon(
                activeNavItem == index ? bottomNavItems[index]['normal_icon'] : bottomNavItems[index]['icon_outlined'],
                color: activeNavItem == index ? kGreenish : Colors.black54,
              ),
            ),
          ),
        ),
      ),
    );
  }
}