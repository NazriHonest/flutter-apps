import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nazri_funiture_shop/Screens/banking/statistics.dart';
import 'package:nazri_funiture_shop/Screens/banking/widgets/bank_transactions.dart';
import '../furniture_app/widgets/custom_card.dart';

class BankHomeScreen extends StatelessWidget {
  const BankHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> actions = [
      {
        "icon": Icons.add,
        "text": "Add",
      },
      {
        "icon": Icons.send,
        "text": "Send",
      },
      {
        "icon": Icons.arrow_downward,
        "text": "Receive",
      },
      {
        "icon": Icons.payment,
        "text": "Pay bill",
      },
      {
        "icon": Icons.more_horiz,
        "text": "More",
      },
    ];

    

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black45,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 25, 35, 43),
                          shape: BoxShape.circle),
                      child: const Icon(
                        Icons.add_rounded,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap:() => Get.to(const Statistics()),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 25, 35, 43),
                                shape: BoxShape.circle),
                            child: const Icon(
                              Icons.image,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 25, 35, 43),
                              shape: BoxShape.circle),
                          child: const Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Total Balance",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "\$35,546.00",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const CustomCard(),
              const SizedBox(height: 20),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        actions.length,
                        (index) => Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Column(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 25, 35, 43),
                                ),
                                child: Icon(
                                  actions[index]['icon'],
                                  color: Colors.white,
                                  size: 32,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                actions[index]['text'],
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )),
              const SizedBox(height: 20),
              const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Transaction",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const BankTransactions(),
              const SizedBox(height: 10),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color.fromARGB(255, 88, 235, 222),
          child: const Icon(
            Icons.qr_code,
            color: Colors.black45,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: const BottomAppBar(
          color: Colors.black45,
          child: SizedBox(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.home_outlined,
                  color: Colors.grey,
                  size: 32,
                ),
                Icon(
                  Icons.settings,
                  color: Colors.grey,
                  size: 32,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
