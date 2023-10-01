import 'package:get/get.dart';
import 'package:grocery_app/pages/cart/cart_logic.dart';

class CartBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => CartLogic());
    // TODO: implement dependencies
  }
}