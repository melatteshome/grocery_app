import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:grocery_app/pages/front/front_page_logic.dart';
import 'package:grocery_app/utils/common/app_color.dart';
import 'package:grocery_app/utils/common/app_images.dart';
import 'package:sizer/sizer.dart';

import '../../routes/app_routes.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final frontLogic = Get.find<FrontPageLogic>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldBackgroud,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const  Text('Item Detail', style: TextStyle(color: Colors.black, fontSize: 20),)),
      
   body: Padding(
    padding: EdgeInsets.only(top: 1.h),
     child: Column(
       children: [
         Expanded(
           child: Container(
            height: 100.h,
            width: 100.w,
            decoration: const BoxDecoration(color: Colors.white),
            padding: EdgeInsets.only(left: 8.w, right: 8.w),
            child: Obx(()=> ListView.builder(
              itemCount: frontLogic.cart.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    height: 20.h,
                    width: 100.w,
                    
                    decoration: BoxDecoration(color: Colors.white),
                    child: Row(
                      children: [
                        Container(
                          height: 15.h,
                          width: 25.w,
                          decoration: BoxDecoration(
                                      
                            image: DecorationImage( fit: BoxFit.cover,  image: AssetImage(frontLogic.cart.value[index]['icon']??'')))
                        ), 
   
                        Expanded(
                          child: Container(
                             height: 15.h,
                          width: 25.w,
                          padding: EdgeInsets.only(top: 1.h, bottom: 1.h),
                            alignment: Alignment.bottomCenter,
                            child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                               const Text('FRUTIS'),
                                Text(frontLogic.cart.value[index]['label']??''),
                                Expanded(child: SizedBox(height: 1,)),
                                Text(frontLogic.cart.value[index]['price']??'', style: TextStyle(color: AppColor.orange, fontSize: 18, fontWeight: FontWeight.w700),)
                        
                              ],
                            ),
                          ),
                        ),
   
                        Padding(
                          padding: EdgeInsets.only(bottom: 2.h),
                          child: Column(
                            children: [
                             const Expanded(child: SizedBox(height: 1,)),
                              Container(
                                height:4.h ,
                                width: 30.w,
                                decoration: BoxDecoration(color: Color(0xFFEFEFEF), borderRadius: BorderRadius.circular(4.h)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(onPressed: (){
                                 frontLogic.cart.value[index]['amount']= frontLogic.cart.value[index]['amount'] -1;

                                }, icon: Icon(FeatherIcons.minus, color: Colors.grey,size: 20,)),
                              Obx(()=>  Text( frontLogic.cart.value[index]['amount'].toString()??'', style: TextStyle(color: Colors.black, fontSize: 18),),),
                                IconButton(onPressed: (){
                                 frontLogic.cart.value[index]['amount']= frontLogic.cart.value[index]['amount'] + 1;
                                }, icon:const Icon(FeatherIcons.plus, color: Colors.grey,size: 20)),


                              ],
                            ),  ),
                            ],
                          ),
                        )
   
                     
                      ],
                    ),
                  ),
                  SizedBox(height: 10,)
                ],
              );
            })) ),
         ),
         Container(
          height: 15.h,
          width: 100.w,
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
           children: [
             Text('total 500', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),

                               const SizedBox(height: 20,)
,
                         GestureDetector(
                                onTap: (){
             Get.toNamed(AppRoutes.success);
                                },
                                 child: Container(
                                  height: 5.h ,
                                  width: 90.w,
                                  decoration:  BoxDecoration(
                                    color: AppColor.lightYellow,
                                    borderRadius: BorderRadius.circular(7.h)
                                  ),
                               
                                  child: const Center(child: Text('PLACE ORDER', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),)),
                                 ),
                               ),
                               
                               const SizedBox(height: 10,)

           ],
         ))
       ],
     ),
   ),
   
    );
  }
}