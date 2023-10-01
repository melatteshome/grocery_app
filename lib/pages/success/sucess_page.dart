import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:grocery_app/pages/home/home_logic.dart';
import 'package:grocery_app/utils/common/app_images.dart';
import 'package:sizer/sizer.dart';

import '../../routes/app_routes.dart';
import '../../utils/common/app_color.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({super.key});

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  final homeLogic = Get.find<HomeLogic>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
            title: const Center(child:Text('Thank You', style: TextStyle(color: Colors.black, fontSize: 20),)),

      ),

body: Padding(
  padding: EdgeInsets.only(left: 7.w, right: 7.w),
  child:   Column(
  
    children: [
  
      SizedBox(height: 10.h,),
  
      Center(
  
        child: Container(
  
          height: 40.h,
  
          width: 80.w,
  
          decoration:const BoxDecoration(image:  DecorationImage(fit: BoxFit.contain, image: AssetImage( AppImages.successPurchase))),
  
        ),
  
      ),

      


  
      Text('Your Order in process', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600)),
  
  SizedBox(height: 1.h,),
  
    const  Padding(padding: EdgeInsets.only(left: 20, right: 10), child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400))),
          
          Expanded(child: SizedBox(height: 1.h)),
            GestureDetector(
                                onTap: (){
                                  homeLogic.switchTab(0);
Get.toNamed(AppRoutes.home);
                                },
                                 child: Container(
                                  height: 7.h ,
                                  width: 100.w,
                                  decoration:  BoxDecoration(
                                    color: AppColor.lightYellow,
                                    borderRadius: BorderRadius.circular(7.h)
                                  ),
                               
                                  child: const Center(child: Text('GO BACK HOME', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),)),
                                 ),
                               ),
  SizedBox(height: 4.h,),

    ],
  
  ),
),
    );
  }
}