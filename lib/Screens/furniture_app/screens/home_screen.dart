import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:nazri_funiture_shop/constants/color.dart';
import 'package:nazri_funiture_shop/provider/getx_provider.dart';
import '../../../constants/dummy_data.dart';
import '../widgets/best_seller_grid_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GetController controller = Get.put(GetController());

  int activeCat = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kWhite,
        // appBar: AppBar(title: const Text("Home Screen")),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: RichText(
                          text: TextSpan(
                              text: 'Modern Furniture\n',
                              style: TextStyle(
                                  color: kGreenish,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 25,
                                ),
                              children: [
                                TextSpan(
                                  text: 'for your house',
                                  style: TextStyle(
                                      color: kGreenish,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 20,
                                    ),
                                  
                                ),
                              ]),
                        ),
                      ),
                      Column(
                        children: [    
                        Obx( () =>
                          Text(
                            controller.cartItems.length.toString(),
                            style: const TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        
                        Icon(
                          Icons.shopping_cart_rounded,
                          color: kGreenish,
                        ),
                        
                        ]
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: List.generate(
                        categoryList.length,
                        (index) => GestureDetector(
                          onTap: () => setState(() {
                            activeCat = index;
                          }),
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            width: 150,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: activeCat == index
                                    ? kGreenish
                                    : kClearWhite),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(activeCat == index
                                    ? categoryList[index]['icon_white']!
                                    : categoryList[index]['icon_black']!),
                                Text(
                                  categoryList[index]['title']!,
                                  style: TextStyle(
                                    color: activeCat == index
                                        ? kWhite
                                        : Colors.black.withOpacity(0.7),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Best Seller",
                        style:TextStyle(
                                color: kGreenish,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                      ),
                      const Text(
                        "See all",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const BestSellerGridItem(),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular Items",
                        style: TextStyle(
                                color: kGreenish,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                      ),
                      const Text(
                        "See all",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          popularItems.length,
                          (index) => Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * .75,
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: kClearWhite,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 120,
                                    height: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            bottomLeft: Radius.circular(10)),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              popularItems[index].imgUrl),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          popularItems[index].name,
                                          style: TextStyle(
                                              color: kGreenish,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star_border,
                                              color: kYellowish,
                                            ),
                                            const SizedBox(width: 10),
                                            Text(
                                              popularItems[index].rate,
                                              style: const TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        Text(
                                          '\$${popularItems[index].price.toString()}',
                                          style: TextStyle(
                                              color: kYellowish,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 10.0, bottom: 10.0),
                                    child: Align(
                                      alignment: Alignment.bottomRight,
                                      child: Container(
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
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ));
  }
}
