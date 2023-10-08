import 'package:flutter/material.dart';

import '../../../provider/getx_provider.dart';

class AllTransactions extends StatelessWidget {
  const AllTransactions({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final GetController controller;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        primary: false,
        itemCount: controller.personalInfo['Transactions'].length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 10),
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 225, 225, 228),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Container(
                    width: 10,
                    height: 100,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      color: Colors.greenAccent,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        controller.personalInfo['Transactions'][index]
                            ['transaction-type'],
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        controller.personalInfo['Transactions'][index]['date'],
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ]),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      RichText(
                        text: TextSpan(
                            text: controller.personalInfo['Transactions'][index]
                                ['currency-type'],
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                            children: [
                              TextSpan(
                                text:
                                    " ${controller.personalInfo['Transactions'][index]['amount']}",
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ]),
                      ),
                      const Icon(
                        Icons.arrow_downward_outlined,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
