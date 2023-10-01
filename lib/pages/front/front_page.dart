import 'dart:developer';

import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:grocery_app/pages/front/front_page_logic.dart';
import 'package:grocery_app/pages/home/home_logic.dart';
import 'package:grocery_app/routes/app_pages.dart';
import 'package:grocery_app/routes/app_routes.dart';
import 'package:grocery_app/utils/common/app_color.dart';
import 'package:grocery_app/utils/common/app_images.dart';
import 'package:grocery_app/utils/widgets/category_card.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({super.key});

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final homeLogic = Get.find<HomeLogic>();
  final logic = Get.find<FrontPageLogic>();


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
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.scaffoldBackgroud,
        body: Padding(
         padding: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _frontPageAppBar(), 
              _categories(),
              SizedBox(height: 1.h,),
              CategoryCard(cardHeight: 10.h,cardWidth: 100.w, scrollDirection: Axis.horizontal, imgHeight: 8.h,imgWidth: 22.w,horizontal: true,

              ),
              SizedBox(height: 1.h,),
              _buildTitle('Latest Products', 18),
              SizedBox(height: 1.h,),

              productCard()

            ],
            
          ),
        ),
      ),
    );
  }

  Expanded productCard() {
    return Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 5.w, right: 5.w),
            child: Obx(()=> GridView.builder(gridDelegate:        const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 1.6/2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 15), 
                itemCount: logic.categories.length,
                itemBuilder:  (BuildContext ctx, index){
                  return Container(

                    height: 20.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
            color: Colors.white,

                    ),
                    child: Stack(children: [
                      Positioned(
                        left: 10,
                        top: 10,
                        child: GestureDetector(
                          onTap: (){
                            logic.addToFav(index);
                          },
                          child: Obx(()=> Image.asset( logic.favList.contains(index)? AppImages.rheart:AppImages.greyHeart))),), 

                        Positioned(
                          top: 20,
                          left: 30,
                          child: Container(
                            height: 13.h,
                            width: 30.w,
                            decoration:  BoxDecoration(
                              image: DecorationImage(image: AssetImage(logic.categories.value[index]['icon'] ??''), fit: BoxFit.cover)
                            ),
                          ),
                        ), 

                        Positioned(
                          bottom: 10,
                        left: 10,
                          child: 
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                        Text(logic.categories.value[index]['label']??'', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                           SizedBox(height: 1.h,),
                          Text(logic.categories.value[index]['price']??'', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),

                           
                            ],
                          ),
                        ),

                           Positioned(
                          bottom: 0,
                          right: 0,
                        
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                           TextButton(onPressed: (){
                            logic.addToCart(logic.categories.value[index]);
                           }, child: const Text('Add to Cart', style: TextStyle(color: Color(0xFFFF0000), fontSize: 10, fontWeight: FontWeight.bold),))
                            ],
                          ),
                        )
                    ]),
                  );
                }),
                )  ),
            );
  }

  Container _categories() {
    return Container(
              height: 5.h,
              child: Row(
                children: [
                  Expanded(child: _buildTitle('Category', 18)), 

                  IconButton(onPressed: (){
                    homeLogic.switchTab(1);
                  }, icon: const Icon(FeatherIcons.arrowRight))
                ],
              ));


  }
   _buildTitle(
    String title, double size
  ) => Padding(padding:EdgeInsets.only(left: 5.w), child:Text(title, style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black, fontSize: size),));

  Container _frontPageAppBar() {
    return Container(
              color: Colors.white,
              height: 8.h,
              padding: EdgeInsets.only(left:5.w, right: 5.w,bottom: 1.h, top: 1.h),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Expanded(
                          child: Text('Good Morning', style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400
                          ),
                          
                          ),
                        ),
                         Text('Rafatul Islam', style: TextStyle(
                                           fontWeight: FontWeight.w600  , 
                                           fontSize: 20
                                           ),)
                      ],
                    ),
                  ),

                  Column(
                    children: [
                      Expanded(
                        child: Container(
                        height: 1,
                        ),
                      ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.notification_add_rounded)),
                    ],
                  )
                ],
              ),
            );
  }
}
