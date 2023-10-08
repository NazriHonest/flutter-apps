import 'package:flutter/material.dart';

class CardApp extends StatelessWidget {
  final Color color;
  final String text;

  const CardApp({
    Key? key,
    required this.color,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 30),
      ),
    );
  }
}
