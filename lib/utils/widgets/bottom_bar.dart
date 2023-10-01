import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:grocery_app/utils/common/app_color.dart';
import 'package:sizer/sizer.dart';


class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
    this.index = 0,
    required this.items,
  }) : super(key: key);
  final int index;
  final List<BottomBarItem> items;

  @override
  Widget build(BuildContext context) {
    return Container(
   
      child: Container(
        height: 9.h ,
        decoration:const BoxDecoration(
          color : Color(0xFFFFFFFF),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 1),
              blurRadius: 1,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Center(
          child: Row(
            children: List.generate(
                items.length,
                (index) => _buildItemView(
                      i: index,
                      item: items.elementAt(index),
                    )).toList(),
          ),
        ),
      ),
    );
  }

  Widget _buildItemView({required int i, required BottomBarItem item}) =>
      Expanded(
        child: GestureDetector(
          onTap: () {
            if (item.onClick != null) item.onClick!(i);
          },
          behavior: HitTestBehavior.translucent,
          child: Stack(
            alignment: Alignment.center,
            children: [
        
           
              Positioned(
                  top: 3.h,
                  child: Icon(
                    
                    item.selectedImgRes,
                    size: 35,
                    color: i == index ? AppColor.lightYellow : AppColor.inactive,
                  )

              )
            ],
          ),
        ),
      );
}

class BottomBarItem {
  final IconData selectedImgRes;
  final Function(int index)? onClick;
  final Stream<int>? steam;
  final int? count;

  BottomBarItem(
      {required this.selectedImgRes,
      this.onClick,
      this.steam,
      this.count});
}
