import 'package:get/get.dart';
import 'package:grocery_app/pages/front/front_page_logic.dart';

class FrontPageBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => FrontPageLogic());
    // TODO: implement dependencies
  }
}