import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nazri_funiture_shop/Screens/tick_account/widgets/all_transactions.dart';
import 'package:nazri_funiture_shop/Screens/tick_account/widgets/header_section.dart';
import 'package:nazri_funiture_shop/Screens/tick_account/widgets/see_more_section.dart';
import 'package:nazri_funiture_shop/Screens/furniture_app/widgets/bottom_nav.dart';

import '../../provider/getx_provider.dart';


class TickAccountScreen extends StatefulWidget {
  const TickAccountScreen({super.key});

  @override
  State<TickAccountScreen> createState() => _TickAccountScreenState();
}

class _TickAccountScreenState extends State<TickAccountScreen> {
  @override
  Widget build(BuildContext context) {

    GetController controller = Get.put(GetController());
    return Scaffold(
      body: ListView(
        children: [
          HeaderSection(controller: controller),
          const SizedBox(height: 15),
          const SeeMoreSection(),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: AllTransactions(controller: controller),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}





