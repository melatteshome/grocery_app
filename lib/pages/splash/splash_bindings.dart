import 'package:get/get.dart';
import 'package:grocery_app/pages/splash/splash_logic.dart';

class SplashBinding extends Bindings  {@override
  void dependencies() {
    Get.lazyPut(() => SplashLogic());
    // TODO: implement dependencies
  }

 }