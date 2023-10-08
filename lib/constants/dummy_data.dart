import 'package:flutter/material.dart';
import 'package:nazri_funiture_shop/model/furniture_model.dart';

List<Furniture> furnitureList = [
  Furniture(
      id: "f1",
      name: "Wingback Chair",
      imgUrl: "assets/images/funky-chair-1.jpeg",
      price: 150,
      description:
          "This funky chair features an iconic silhouette with a wide winged back,flared arms, and tapered legs. The chair has a button-tufted back, upholstered in a soft synthetic velvet which is available in a choice of eight rich colors.",
      rate: "4.5"),
  Furniture(
      id: "f2",
      name: "Scalloped Accent Chair",
      imgUrl: "assets/images/funky-chair-2.jpeg",
      price: 200,
      description:
          "This seashell-inspired barrel chair features an elegant channel-tufted back with scalloped edges and gleaming gold-toned iron legs. It’s available in a choice of 14 stunning colors ranging from pastels to neon brights to suit almost any color scheme.",
      rate: "4.7"),
  Furniture(
      id: "f3",
      name: "Accent Chair With Nailhead Trim",
      imgUrl: "assets/images/funky-chair-3.jpeg",
      price: 230,
      description:
          "This glamorous accent chair is sure to make a statement with its bold colorful fabric choices, tufted backrest, and stylish nailhead trim. It has a thick comfortable seat cushion, and gently curving arms.",
      rate: "4.7"),
  Furniture(
      id: "f4",
      name: "Quirky Armchair with Cut out Armrests",
      imgUrl: "assets/images/funky-chair-4.jpeg",
      price: 230,
      description:
          "This funky accent chair features an unusual design with a square silhouette and cut-out armrests. Gleaming gold legs add a touch of opulence to this glamorous accent chair. Available in a choice of 14 distinctive colors to suit your decor.",
      rate: "4.0"),
  Furniture(
      id: "f5",
      name: "Retro Inspired Funky Accent Chair",
      imgUrl: "assets/images/funky-chair-5.jpeg",
      price: 210,
      description:
          "This gorgeous chair features a solid wood frame upholstered in beautiful rust red velvet. The smooth curved body and tapered gold legs give this chair a mid-century modern look that will make a stunning addition to most modern homes.",
      rate: "4.5"),
  Furniture(
      id: "f6",
      name: "Floral Cocktail Chair",
      imgUrl: "assets/images/funky-chair-6.jpeg",
      price: 190,
      description:
          "This stylish accent chair features vibrant floral patterned upholstery with seamed tufting and elegant gold tapered legs. The upholstery is available in various colorways, each as beautiful as the next!",
      rate: "4.3"),
  Furniture(
      id: "f7",
      name: "Curved Side Chair",
      imgUrl: "assets/images/funky-chair-7.jpeg",
      price: 200,
      description:
          "This unusual chair is a reproduction of an iconic 1963 design, with a tilted back that creates a unique sitting position. The chair is made from molded plywood which is heated and molded into shape to create its smooth curves.",
      rate: "4.8"),
  Furniture(
      id: "f8",
      name: "Velvet Armchair With Ottoman",
      imgUrl: "assets/images/funky-chair-8.jpeg",
      price: 250,
      description:
          "This stunning chair combines elegance and comfort, with its beautifully curved barrel design. It comes with a matching pebble-shaped ottoman which mirrors the smooth curves of the chair to create a very pleasing and luxurious look.",
      rate: "4.4"),
  Furniture(
      id: "f9",
      name: "Metal and Velvet Accent Chair",
      imgUrl: "assets/images/funky-chair-9.jpeg",
      price: 280,
      description:
          "This bold armchair mixes a traditional silhouette with contemporary materials. It has black metal arms which contrast beautifully with the lime green velvet channel-tufted upholstery. This chair is super comfortable, with a sprung seat and supportive backrest.",
      rate: "4.5"),
  Furniture(
      id: "f10",
      name: "Yellow Barrel Chair",
      imgUrl: "assets/images/funky-chair-10.jpeg",
      price: 310,
      description:
          "This cool armchair features a barrel design with a contemporary twist! The arms and back wrap around the chair and extend to the floor to create a unique flowing design with the seat cushion positioned in the center.",
      rate: "5.0"),
];

List<Furniture> popularItems = [
  Furniture(
      id: "f7",
      name: "Curved Side Chair",
      imgUrl: "assets/images/funky-chair-7.jpeg",
      price: 200,
      description:
          "This unusual chair is a reproduction of an iconic 1963 design, with a tilted back that creates a unique sitting position. The chair is made from molded plywood which is heated and molded into shape to create its smooth curves.",
      rate: "4.8"),
  Furniture(
      id: "f8",
      name: "Velvet Armchair With Ottoman",
      imgUrl: "assets/images/funky-chair-8.jpeg",
      price: 250,
      description:
          "This stunning chair combines elegance and comfort, with its beautifully curved barrel design. It comes with a matching pebble-shaped ottoman which mirrors the smooth curves of the chair to create a very pleasing and luxurious look.",
      rate: "4.4"),
  Furniture(
      id: "f9",
      name: "Metal and Velvet Accent Chair",
      imgUrl: "assets/images/funky-chair-9.jpeg",
      price: 280,
      description:
          "This bold armchair mixes a traditional silhouette with contemporary materials. It has black metal arms which contrast beautifully with the lime green velvet channel-tufted upholstery. This chair is super comfortable, with a sprung seat and supportive backrest.",
      rate: "4.5"),
  Furniture(
      id: "f10",
      name: "Yellow Barrel Chair",
      imgUrl: "assets/images/funky-chair-10.jpeg",
      price: 310,
      description:
          "This cool armchair features a barrel design with a contemporary twist! The arms and back wrap around the chair and extend to the floor to create a unique flowing design with the seat cushion positioned in the center.",
      rate: "5.0"),

];


List<Map<String, String>> categoryList = [
  {
    "title": "Armchair",
    "icon_black": "assets/category_icons/armchair_black.png",
    "icon_white": "assets/category_icons/armchair_white.png",
  },
  {
    "title": "Double bed",
    "icon_black": "assets/category_icons/bed_black.png",
    "icon_white": "assets/category_icons/bed_white.png",
  },
  {
    "title": "Cupboard",
    "icon_black": "assets/category_icons/cupboard_black.png",
    "icon_white": "assets/category_icons/cupboard_white.png",
  }
];

List<Map<String, dynamic>> bottomNavItems = [
  {
    'title': 'Home',
    'icon_outlined': Icons.home_outlined,
    'normal_icon': Icons.home,
  },
  {
    'title': 'Search',
    'icon_outlined': Icons.search_outlined,
    'normal_icon': Icons.search,
  },
  {
    'title': 'QR reader',
    'icon_outlined': Icons.qr_code_2,
    'normal_icon': Icons.qr_code_2
  },
  {
    'title': 'Cart',
    'icon_outlined': Icons.shopping_cart_outlined,
    'normal_icon': Icons.shopping_cart
  },
  {
    'title': 'User',
    'icon_outlined': Icons.person_outlined,
    'normal_icon': Icons.person,
  }
];
