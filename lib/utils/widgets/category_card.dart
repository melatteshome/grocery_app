
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../common/app_color.dart';
import '../common/app_images.dart';

class CategoryCard extends StatelessWidget {
  final double cardHeight;
  final double cardWidth;
  final Axis scrollDirection;
  final double imgHeight;
  final double imgWidth;
  final bool horizontal;
  const CategoryCard({
    required this.imgHeight,
    required this.imgWidth,
    required this.horizontal,



    required this.cardHeight,
    required this.cardWidth, required this.scrollDirection,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: cardHeight,
      width: cardWidth,
      padding: EdgeInsets.only(left:5.w, ),
      child: ListView.builder(
        scrollDirection: scrollDirection,
        itemCount: 6,
        shrinkWrap: true,
        itemBuilder: (context, index) {
        return Row(
          children: [
            Container(
               
              height: 8.h,
              width: 22.w,
              decoration: BoxDecoration(
                boxShadow: [ BoxShadow(blurRadius:8, spreadRadius: 0, offset: Offset(10, 0),   color: Colors.grey.withOpacity(.5)),BoxShadow(blurRadius:10, spreadRadius: 0, offset: Offset(0, 7), color: AppColor.inactive)],
                image: DecorationImage(image: AssetImage(AppImages.cat2, )),
                borderRadius: BorderRadius.circular(17),
                // border: Border.all(color: Colors.pink),
                color: Colors.white
              ),
        // child:   Card
        //    (
        //     shape: RoundedRectangleBorder(

        //       borderRadius: BorderRadius.circular(20)
        //     ),
        //     elevation: 8, child: Container(
              
        //       height: 9.h,
        //       width: 22.w,
              
              
        //       decoration: BoxDecoration(
                
                
        //         image: DecorationImage(
                
                
        //         image: AssetImage(AppImages.cat1) )),) ,),
            ),
            SizedBox(width: 20,)
          ],
        );
      }),
    );
  }
}