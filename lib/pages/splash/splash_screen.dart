import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:grocery_app/routes/app_pages.dart';
import 'package:grocery_app/routes/app_routes.dart';
import 'package:grocery_app/utils/common/app_color.dart';
import 'package:grocery_app/utils/common/app_images.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
    @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
          ()=>Get.toNamed(AppRoutes.login) );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
    
        height: 100.h,
        width: 100.w,
        decoration: BoxDecoration(color: AppColor.lightYellow),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: SizedBox(height: 1.h,)),
            Image.asset(AppImages.splash),
            SizedBox(height: 1.h,),
            Image.asset(AppImages.freshFruit),

            SizedBox(height: 15.h,)
          ],
        ),
      ),
    );
  }
}