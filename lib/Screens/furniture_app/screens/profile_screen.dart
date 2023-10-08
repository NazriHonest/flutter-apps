import 'package:flutter/material.dart';
//import 'package:get/get_connect/http/src/utils/utils.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(title: const Text("Profile Screen")),
    //   body: Container(
    //     color: Colors.green[50],
    //   ),
     return SafeArea(
       child: Drawer(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/money deposit.webp"),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const ListTile(
                  title: Text("Home"),
                  leading: Icon(Icons.home),
                ),
                const Divider(thickness: 1.5),
                const ListTile(
                  title: Text("Cart"),
                  leading: Icon(Icons.shopping_cart),
                ),
                const Divider(thickness: 1.5),
                const ListTile(
                  title: Text("Settings"),
                  leading: Icon(Icons.settings),
                ),
                const Divider(thickness: 1.5),
                const ListTile(
                  title: Text("About"),
                  leading: Icon(Icons.info),
                ),
            ]),
          ),
        ),
     );
    //);
  }
}
