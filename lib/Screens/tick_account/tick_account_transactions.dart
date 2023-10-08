import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../provider/getx_provider.dart';

class Transactions extends StatelessWidget {
  const Transactions({super.key,});

  @override
  Widget build(BuildContext context) {
    GetController controller = Get.find();

    // final start = controller.dateRange.value.start;
    // final end = controller.dateRange.value.end;
    // final difference = controller.dateRange.value.duration;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.redAccent,
          ),
        ),
        elevation: 0,
        title: const Text(
          "Transactions",
          style: TextStyle(
            color: Colors.redAccent,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              controller.pickDateTimeRange();
            },
            icon: const Icon(
              Icons.calendar_month,
              color: Colors.redAccent,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.redAccent,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
            shrinkWrap: true,
            primary: false,
            itemCount: controller.personalInfo['Transactions'].length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(bottom: 10),
                width: double.infinity,
                height: 100,
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
                            controller.personalInfo['Transactions'][index]
                                ['date'],
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
                                text: controller.personalInfo['Transactions']
                                    [index]['currency-type'],
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
            }),
      ),

      bottomNavigationBar: Container(
        width: double.infinity,
        height: 60,
        color: Colors.grey.shade50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Obx(() => 
              Text(
                DateFormat("dd-MM-yyyy")
                .format(controller.dateRange.value.start)
                .toString(),
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
              ),
            ),
            const Text(
              "-",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
              ),
            ),
            Obx(() =>
              Text(
                DateFormat("dd-MM-yyyy")
                .format(controller.dateRange.value.end)
                .toString(),
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
              ),
            ),
          ]),
      ),
    );
  }

  
}
