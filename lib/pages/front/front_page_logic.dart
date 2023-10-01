import 'package:get/get.dart';
import 'package:grocery_app/utils/common/app_images.dart';

class FrontPageLogic extends GetxController{

  var favList =[].obs;
  var cart =[].obs;
  var favListForUi =[].obs;


  RxList<Map<String,dynamic> > products =[{
    'label':'Orange',
    'icon': AppImages.p1, 
    'price':"Br 300",
    'amount': 0

  },{
    'label':'Broccolii',
    'icon': AppImages.p2, 
    'price':"Br 300",
    'amount': 0

  },{
    'label':'Oninon',
    'icon': AppImages.p2, 
    'price':"Br 300", 
    'amount': 0
  },{
    'label':'Tomato',
    'icon': AppImages.p3, 
    'price':"Br 300",
    'amount': 0

  },{
    'label':'Broccolii',
    'icon': AppImages.p2, 
    'price':"Br 300",
    'amount': 0

  },{
    'label':'Oninon',
    'icon': AppImages.p2, 
    'price':"Br 300",
    'amount': 0

  },{
    'label':'Tomato',
    'icon': AppImages.p3, 
    'price':"Br 300",
    'amount': 0

  },].obs;

  addToFav(var i){
 if(favList.contains(i)){
  favList.remove(i);
  favListForUi.remove(products[i]);
 }else{
  favList.add(i);
  favListForUi.add(products[i]);
 }
  }

addToCart(var i){
   if(cart.contains(i)){
 }else{
  cart.add(i);
 }
}

increament(var i){
                             cart[i]['amount'].value = cart[i]['amount'] +1;

}

decreament(var i){
                             cart[i]['amount'] = cart[i]['amount'] -1;


}
}