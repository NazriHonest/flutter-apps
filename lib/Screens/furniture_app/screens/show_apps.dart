import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nazri_funiture_shop/Screens/banking/bank_home_screen.dart';
import 'package:nazri_funiture_shop/Screens/furniture_app/screens/root_screen.dart';
import 'package:nazri_funiture_shop/Screens/tick_account/tick_Account_screen.dart';
//import '../../../provider/getx_provider.dart';
import '../widgets/app_cards.dart';

class ShowApps extends StatelessWidget {
  const ShowApps({super.key});

  @override
  Widget build(BuildContext context) {
    //GetController controller = Get.put(GetController());
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: ListView(
            children: [
              GestureDetector(
                onTap: () => Get.to(const RootScreen()),
                child: const CardApp(color: Colors.blue, text: "Furniture"),
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () => Get.to(const TickAccountScreen()),
                child: const CardApp(color: Colors.greenAccent, text: "Tick Account"),
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () => Get.to(const BankHomeScreen()),
                child: const CardApp(color: Colors.black54, text: "Banking App"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

