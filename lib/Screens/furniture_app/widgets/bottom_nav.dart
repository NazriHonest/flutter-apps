import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nazri_funiture_shop/provider/getx_provider.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int activeIndex = 0;
  final GetController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: double.infinity,
        height: 60,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            controller.bottomItems.length,
            (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    activeIndex = index;
                  });
                },
                child: Icon(
                  controller.bottomItems[index]['icon'],
                  color: Colors.grey,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
