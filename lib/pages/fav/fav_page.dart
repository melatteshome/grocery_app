import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:grocery_app/pages/front/front_page_logic.dart';
import 'package:sizer/sizer.dart';

import '../../utils/common/app_color.dart';
import '../../utils/common/app_images.dart';

class FavePage extends StatefulWidget {
  const FavePage({super.key});

  @override
  State<FavePage> createState() => _FavePageState();
}

class _FavePageState extends State<FavePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final frontLogic = Get.find<FrontPageLogic>();
    return Scaffold(
      backgroundColor: AppColor.scaffoldBackgroud,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
             title: const  Text("Favorite's", style: TextStyle(color: Colors.black, fontSize: 20),)),

      
      body: Padding(
        padding: EdgeInsets.only(top: 1.h),
        child: Container(
         height: 100.h,
         width: 100.w,
         decoration:const BoxDecoration(color: Colors.white),
         padding: EdgeInsets.only(left: 8.w, right: 8.w),
         child: Obx(()=> ListView.builder(
           itemCount: frontLogic.favListForUi.length,
           shrinkWrap: true,
           itemBuilder: (context, index) {
           return Column(
             children: [
               Container(
                 height: 20.h,
                 width: 100.w,
                 
                 decoration:const BoxDecoration(color: Colors.white),
                 child: Row(
                   children: [
                     Container(
                       height: 15.h,
                       width: 25.w,
                       decoration: BoxDecoration(
                                   
                         image: DecorationImage( fit: BoxFit.cover,  image: AssetImage(frontLogic.favListForUi[index]['icon']??'')))
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
                             Text(frontLogic.favListForUi.value[index]['label']??"",style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500)),
                             Expanded(child: SizedBox(height: 1,)),
                             Text(frontLogic.favListForUi.value[index]['price']??"", style: TextStyle(color: AppColor.orange, fontSize: 18, fontWeight: FontWeight.w700),)
                     
                           ],
                         ),
                       ),
                     ),
         
                     Padding(
                                          padding: EdgeInsets.only(top: 3.h, bottom: 2.h),
      
                       child: Column(
                         children: [
                          Image.asset(AppImages.rheart, height: 4.h,width: 10.w,),
                          const Expanded(child: SizedBox(height: 1,)),
                           Container(
                             height:4.h ,
                             width: 30.w,
                             decoration: BoxDecoration(color: Color(0xFFEFEFEF), borderRadius: BorderRadius.circular(4.h)),
                         child: Center(child: GestureDetector(
                          onTap: (){},
                          child:const Text('Add to cart', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),))),  ),
                         ],
                       ),
                     )
         
                  
                   ],
                 ),
               ),
               SizedBox(height: 10,)
             ],
           );
         }) ),)
      ),
    );
  }
}