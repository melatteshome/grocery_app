import 'dart:developer';

import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/pages/cart/cart_page.dart';
import 'package:grocery_app/pages/category/category_page.dart';
import 'package:grocery_app/pages/fav/fav_page.dart';
import 'package:grocery_app/pages/front/front_page.dart';
import 'package:grocery_app/pages/home/home_logic.dart';
import 'package:iconsax/iconsax.dart';

import '../../utils/widgets/bottom_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final logic = Get.find<HomeLogic>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,


body: Obx(()=> Column(
  children: [Expanded(child: IndexedStack(

    index: logic.index.value,children:const [
      FrontPage(),
     categoryPage(),
      CartPage(), 
      FavePage()
    ],
  ))
  
  ,              BottomBar(
    index:logic.index.value ,items: [
      BottomBarItem(selectedImgRes: Iconsax.home, onClick: (i)=>logic.switchTab(i)),
      BottomBarItem(selectedImgRes: Icons.arrow_circle_down, onClick: (i)=>logic.switchTab(i)),

      BottomBarItem(selectedImgRes: FeatherIcons.shoppingCart, onClick: (i)=>logic.switchTab(i)),
      BottomBarItem(selectedImgRes: Iconsax.heart, onClick: (i)=>logic.switchTab(i)),
      BottomBarItem(selectedImgRes: FeatherIcons.user, onClick: (i)=>logic.switchTab(i))

    ],

  )

  ],
),)
    );
  }
}