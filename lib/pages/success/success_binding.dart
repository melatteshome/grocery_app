import 'package:get/get.dart';
import 'package:grocery_app/pages/success/sucess_logic.dart';

class SuccessBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SuccessLogic());
    // TODO: implement dependencies
  }
}