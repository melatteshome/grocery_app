import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/pages/cart/cart_binding.dart';
import 'package:grocery_app/pages/cart/cart_logic.dart';
import 'package:grocery_app/pages/category/category_logic.dart';
import 'package:grocery_app/pages/front/front_page_logic.dart';
import 'package:grocery_app/pages/home/home_logic.dart';
import 'package:grocery_app/pages/login/login_logic.dart';
import 'package:grocery_app/pages/login/login_screen.dart';
import 'package:grocery_app/pages/splash/splash_logic.dart';
import 'package:grocery_app/routes/app_pages.dart';
import 'package:grocery_app/routes/app_routes.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {  
      return GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
    
          primarySwatch: Colors.blue,
        ),
        getPages: AppPages.routes,
        initialBinding: InitBindings() ,
        initialRoute: AppRoutes.login,
        home: const LoginScreen()
      );}
    );
  }
}


class InitBindings extends Bindings{
  @override
  void dependencies() {

Get.put(LoginLogic());
Get.put(SplashLogic()); 
Get.put(HomeLogic());
Get.put(CategoryLogic());
Get.put(CartLogic());
Get.put(FrontPageLogic());

 }

}