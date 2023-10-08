import 'package:flutter/material.dart';

import '../../../provider/getx_provider.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final GetController controller;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return SizedBox(
      width: double.infinity,
      height: height * .5,
      //color: const Color.fromARGB(97, 79, 198, 219),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 260,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xffE20CC6), Color(0xffEC4B32)],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.withOpacity(0.7)),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                controller.personalInfo['name'],
                                style: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                controller.personalInfo['company'],
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Balance-USD",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 80),
                      Text(
                        "Balance-KES",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 120,
                          height: 30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color.fromARGB(255, 248, 246, 246)
                                  .withOpacity(0.5)),
                          child: const Text(
                            "Tap to show",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 80),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 120,
                          height: 30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color.fromARGB(255, 248, 246, 246)
                                  .withOpacity(0.5)),
                          child: const Text(
                            "Tap to show",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ),
          ),
          Positioned(
          top: 180,
          left: 20,
          right: 20,
          child: Container(
            width: double.infinity,
            height: 160,
            decoration: BoxDecoration(
              //color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage("assets/images/money deposit.webp"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],),
    );
  }
}
