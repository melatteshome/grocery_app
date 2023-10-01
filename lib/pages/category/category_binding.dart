import 'package:get/get.dart';
import 'package:grocery_app/pages/category/category_logic.dart';

class CategoryBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => CategoryLogic());
    // TODO: implement dependencies
  }

}