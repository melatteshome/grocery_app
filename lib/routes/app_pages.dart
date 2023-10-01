import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:grocery_app/pages/cart/cart_binding.dart';
import 'package:grocery_app/pages/cart/cart_page.dart';
import 'package:grocery_app/pages/category/category_binding.dart';
import 'package:grocery_app/pages/category/category_page.dart';
import 'package:grocery_app/pages/home/home_binding.dart';
import 'package:grocery_app/pages/home/home_screen.dart';
import 'package:grocery_app/pages/login/login_binding.dart';
import 'package:grocery_app/pages/login/login_screen.dart';
import 'package:grocery_app/pages/splash/splash_bindings.dart';
import 'package:grocery_app/pages/splash/splash_screen.dart';
import 'package:grocery_app/pages/success/success_binding.dart';
import 'package:grocery_app/pages/success/sucess_page.dart';
import 'package:grocery_app/routes/app_routes.dart';

class AppPages{
  static final routes = <GetPage>[
    GetPage(name: AppRoutes.login, page: ()=> LoginScreen(), binding: LoginBinding()),
    GetPage(name: AppRoutes.home, page: ()=> HomeScreen(), binding: HomeBinding()),
    GetPage(name: AppRoutes.category, page:()=> categoryPage(), binding: CategoryBindings()),
    GetPage(name: AppRoutes.cart, page: ()=> CartPage(), binding: CartBinding()),
    GetPage(name: AppRoutes.success,page: ()=> SuccessPage(), binding: SuccessBinding()), 
    GetPage(name: AppRoutes.splashScreen, page: ()=> SplashScreen(), binding: SplashBinding())
  ];
}