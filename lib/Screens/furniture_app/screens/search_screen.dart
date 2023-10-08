import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Search an Item")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Search here",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none
                ),
              )
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: (){}, 
              child: const Text("Search")
            ),
          ],
        ),
      )
    );
    
  }
}