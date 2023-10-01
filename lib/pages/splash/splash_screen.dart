import 'package:flutter/cupertino.dart';
import 'package:grocery_app/utils/common/app_color.dart';
import 'package:grocery_app/utils/common/app_images.dart';
import 'package:sizer/sizer.dart';

class _SplashScreenState extends StatefulWidget {
  const _SplashScreenState({super.key});

  @override
  State<_SplashScreenState> createState() => __SplashScreenStateState();
}

class __SplashScreenStateState extends State<_SplashScreenState> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      child: Container(
    
        height: 100.h,
        width: 100.w,
        decoration: BoxDecoration(color: AppColor.lightYellow),
        child: Center(child: Image.asset(AppImages.splash),),
      ),
    );
  }
}