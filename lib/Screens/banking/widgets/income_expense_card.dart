import 'package:flutter/material.dart';

class IcomeExpernseCard extends StatelessWidget {
  const IcomeExpernseCard({
    Key? key,
    required this.icon,
    required this.amount,
    required this.text,
    required this.color,
  }) : super(key: key);

  final IconData icon;
  final String amount;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      alignment: Alignment.center,
      width: 150,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        //color: const Color.fromARGB(255, 49, 49, 49),
        color: const Color.fromARGB(255, 25, 35, 43),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            width: 35,
            height: 35,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: Icon(icon),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                amount,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                text,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
