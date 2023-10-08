import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:nazri_funiture_shop/provider/getx_provider.dart';

import '../../../constants/color.dart';
import '../../../constants/dummy_data.dart';
import '../screens/detail_screen.dart';

class BestSellerGridItem extends StatelessWidget {
  const BestSellerGridItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GetController controller = Get.put(GetController());
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
        height: 290,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: furnitureList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const DetailScreen()));
                  controller.activeFurniture.value = furnitureList[index];
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 20),
                  width: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kClearWhite),
                  child: Column(
                    children: [
                      Hero(
                        tag: 'location-image-${furnitureList[index].imgUrl}',
                        child: Container(
                          width: 180,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(furnitureList[index].imgUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          furnitureList[index].name,
                          style: TextStyle(
                            color: kGreenish,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: kYellowish,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              furnitureList[index].rate,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$${furnitureList[index].price.toString()}",
                              style: TextStyle(
                                color: kYellowish,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: kGreenish,
                              ),
                              child: Icon(
                                Icons.add,
                                color: kClearWhite,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
