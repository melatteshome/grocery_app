import 'package:get/get.dart';
import 'package:grocery_app/pages/fav/fav_logic.dart';

class FavBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => FavLogic());
    // TODO: implement dependencies
  }
}