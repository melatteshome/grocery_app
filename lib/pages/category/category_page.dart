import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:grocery_app/pages/category/category_logic.dart';
import 'package:grocery_app/pages/home/home_logic.dart';
import 'package:grocery_app/utils/common/app_color.dart';
import 'package:grocery_app/utils/widgets/category_card.dart';
import 'package:sizer/sizer.dart';

import '../../utils/common/app_images.dart';

class categoryPage extends StatefulWidget {
  const categoryPage({super.key});

  @override
  State<categoryPage> createState() => _categoryPageState();
}

class _categoryPageState extends State<categoryPage> {
  final homeLogic = Get.find<HomeLogic>();
  final logic = Get.find<CategoryLogic>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoryLogic>(
      builder: (controller) {
        return Scaffold(
        backgroundColor: AppColor.scaffoldBackgroud,
          appBar:AppBar(
            title: const Center(child:Text('Categories', style: TextStyle(color: Colors.black, fontSize: 20),)),
            
            elevation: 0, backgroundColor: Colors.white, leading: IconButton(onPressed: (){homeLogic.switchTab(0);}, icon:const Icon(FeatherIcons.arrowLeft, color: Colors.black, size: 30,)), ) ,
       body: Container(
        padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 2.h, bottom: 1.h),
        height: 100.h, child: GridView.builder(   gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 2 / 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20) , itemBuilder: (context, index) {
        return      
        GestureDetector(
          onTap: (){
    controller.switchIndex(index);
          },
          child: Container(
                     
                    height: 10.h,
                    width: 22.w,
                    decoration: BoxDecoration(
        
                      borderRadius: BorderRadius.circular(20),
                    ),
             child: Card(
              
              
              elevation: 10,   shape: RoundedRectangleBorder(
        
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Container(
                    height: 10.h,
                    width: 22.w,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border:  controller.index == index ?  Border.all(color: AppColor.categoryBorder): Border.all(color: Colors.white)     
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 3.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        
                        children: [
                          Center(
                            child: Image.asset(
                              
                              AppImages.cata1, height: 8.h, width: 20.w,),
                          ), 
                            SizedBox(height: 1.h,),
                         const Text('Fruits', style: TextStyle(color: AppColor.orange, fontWeight: FontWeight.w700, fontSize: 14),)
                        ],
                      ),
                    ),
                  ),
                  ),
                  
                  ),
        );
       } ),)
       
        );
      }
    );

    
  }
}