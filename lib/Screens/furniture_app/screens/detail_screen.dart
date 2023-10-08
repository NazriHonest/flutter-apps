
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nazri_funiture_shop/constants/color.dart';
import 'package:nazri_funiture_shop/provider/getx_provider.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GetController controller = Get.find();
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text("Details"),
        //   centerTitle: true,
        // ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                Obx(
                  () => Hero(
                    tag: 'location-image-${controller.activeFurniture.value!.imgUrl}',
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            controller.activeFurniture.value!.imgUrl,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: Material(
                    type: MaterialType.card,
                    color: Colors.redAccent,
                    child: IconButton(
                      onPressed: () => Get.back(),
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 20,
                  child: Material(
                    type: MaterialType.card,
                    color: Colors.redAccent.withOpacity(0.3),
                    child: IconButton(
                      onPressed: () => Get.back(),
                      icon: const Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ]),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        controller.activeFurniture.value!.name,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.ellipsis),
                      ),
                    ),
                    Text(
                      "\$${controller.activeFurniture.value!.price}",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  controller.activeFurniture.value!.description,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                  maxLines: 4,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Rate: ${controller.activeFurniture.value!.rate}",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: kYellowish,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () => controller.decrementItemCounter(),
                          child: SizedBox(
                            width: 30,
                            height: 30,
                            child: Material(
                              type: MaterialType.circle,
                              color: Colors.grey.shade300,
                              child: const Icon(
                                Icons.remove,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Obx(
                          () => Text(
                            controller.itemCounter.value.toString(),
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            controller.incrementItemCounter();
                          },
                          child: SizedBox(
                            width: 30,
                            height: 30,
                            child: Material(
                              type: MaterialType.circle,
                              color: Colors.grey.shade300,
                              child: const Icon(
                                Icons.add,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  //Get.to(const CartScreen());
                  controller.cartItems.add(controller.activeFurniture.value!);
                  controller.increaseTotal(
                      price: controller.activeFurniture.value!.price);
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(
                          '${controller.activeFurniture.value!.name} added to Cart')));
                },
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.redAccent,
                  ),
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(
                      fontSize: 18,
                      color: kWhite,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
