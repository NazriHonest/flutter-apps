import 'package:flutter/material.dart';

class QrCodeScanner extends StatelessWidget {
  const QrCodeScanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("QR Code Scanner Screen"),),
      body: const Center(
        child: Text("QR Code Scanner Screen"),
      ),
    );
    
  }
}