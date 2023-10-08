import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nazri_funiture_shop/Screens/furniture_app/screens/root_screen.dart';
import 'package:nazri_funiture_shop/constants/color.dart';
import 'package:nazri_funiture_shop/provider/getx_provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GetController controller = Get.put(GetController());
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text("Cart Screen"),
        // ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: ListView(
            children: [
              Container(
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () => Get.offAll(const RootScreen()),
                      icon: const Icon(Icons.arrow_back),
                    ),
                  ],
                ),
              ),
              Obx(
                () => ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: controller.cartItems.length,
                    itemBuilder: (context, index) {
                      return Dismissible(
                        key: Key(controller.cartItems[index].id),
                        onDismissed: (direction) {
                          controller.decreaseTotal(
                              price: controller.cartItems[index].price);
                          controller.removeItemFromCart(controller.cartItems[index].id);
                            
                          
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                                '${controller.cartItems[index].name} dismissed')));
                        },

                        background: Container(
                          color: Colors.red,
                          child: const Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: Icon(
                                Icons.delete,
                                size: 32,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        // secondaryBackground: Container(
                        //   width: 100,
                        //   color: Colors.redAccent,
                        //   child: const Icon(Icons.delete),
                        // ),
                        child: Container(
                          width: double.infinity,
                          height: 100,
                          padding: const EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      bottomLeft: Radius.circular(15)),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        controller.cartItems[index].imgUrl),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        controller.cartItems[index].name,
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            overflow: TextOverflow.ellipsis),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        "\$${controller.cartItems[index].price.toString()}",
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blueAccent,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            width: double.infinity,
            height: 60,
            //color: Colors.redAccent,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(
                    () => Text(
                      "Total: \$${controller.total}",
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Flexible(
                    child: Container(
                      width: 120,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kGreenish,
                      ),
                      child: Text(
                        "Checkout",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: kWhite,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
