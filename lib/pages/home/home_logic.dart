import 'package:get/get.dart';

class HomeLogic extends GetxController{
 var index = 0.obs;


 void switchTab(int i){
index.value = i;
 }
}