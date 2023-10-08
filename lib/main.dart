import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nazri_funiture_shop/constants/color.dart';

import 'Screens/furniture_app/screens/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nazri Furniture',
      theme: ThemeData(
        scaffoldBackgroundColor: kWhite,
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
      ),
      home: const StartScreen(),
    );
  }
}
