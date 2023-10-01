import 'package:get/get.dart';
import 'package:grocery_app/pages/home/home_logic.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeLogic());
    // TODO: implement dependencies
  }

}