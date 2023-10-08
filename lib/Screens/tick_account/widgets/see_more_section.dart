import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../tick_account_transactions.dart';


class SeeMoreSection extends StatelessWidget {
  const SeeMoreSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Transactions",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),
          ),
          TextButton(
            onPressed: () {
              Get.to(const Transactions());
            },
            child: const Text(
              "See more",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}