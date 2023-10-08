import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:nazri_funiture_shop/Screens/furniture_app/screens/show_apps.dart';
import 'package:nazri_funiture_shop/constants/color.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: size.width / 2,
                  height: size.height / 2,
                  decoration: BoxDecoration(
                      color: kGreenish.withOpacity(0.4),
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(25))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: RichText(
                    text: TextSpan(
                        text: '  Furni',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: kGreenish),
                        children: [
                          TextSpan(
                            text: '  House',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: kWhite,
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/slideImg1.png",
                    width: 250,
                    height: 250,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: RichText(
              text: TextSpan(
                  text: 'Make Your\n',
                  style: TextStyle(color: kGreenish, fontSize: 20),
                  children: [
                    TextSpan(
                      text: 'Dream House',
                      style: TextStyle(
                        color: kGreenish,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ]),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Modern furniture make you\n want to stay in",
              style: TextStyle(
                  color: Colors.grey, fontSize: 18, height: 1.5),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const ShowApps(),
              )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Skip",
                    style: TextStyle(
                      
                        color: kGreenish,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                    
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: kGreenish,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Next",
                          style: TextStyle(
                       
                              color: kClearWhite,
                              fontSize: 20,
                            
                          ),
                        ),
                        const SizedBox(width: 10),
                        Icon(Icons.arrow_forward_ios,
                            color: kClearWhite, size: 16)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
