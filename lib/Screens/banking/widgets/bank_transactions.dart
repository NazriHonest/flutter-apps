import 'package:flutter/material.dart';

class BankTransactions extends StatelessWidget {
  const BankTransactions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<Map<String, dynamic>> transactions = [
      {
        "icon": "assets/images/google.png",
        "title": "Google Course",
        "sub-title": "App Design Basics",
        "price": "\$5,435",
        "by-who": "by visa",
      },
      {
        "icon": "assets/images/microsoft.png",
        "title": "Microsoft",
        "sub-title": "Subscriptions",
        "price": "\$5,435",
        "by-who": "by paypal",
      },
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        shrinkWrap: true,
        primary: false,
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 15),
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 12, 19, 24),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row( 
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15),
                        width: 70,
                        height: 70,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 15, 15, 15),
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          transactions[index]['icon'],
                        ),
                      ),
                      const SizedBox(width: 3),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            transactions[index]['title'],
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            transactions[index]['sub-title'],
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        transactions[index]['price'],
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        transactions[index]['by-who'],
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}