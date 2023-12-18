import 'package:domino_pizza_app/constant.dart';
import 'package:domino_pizza_app/screen/home/widget/home_textWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectIndex = 0;
  List categories =['Deals','Pizza','Small','Sides'];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: aDefaultPadding),
      height: 36.h,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 10,),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) => GestureDetector(
          onTap: () {
            setState(() {
              selectIndex = index; 
            });
          },
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 25),
            margin: EdgeInsets.only(left: 0 ,top: 5,
              right: index == categories.length -1 ? 10: 0),
            decoration: BoxDecoration(
              color: index == selectIndex ?kPrimaryColor:kLightColor,
              borderRadius: BorderRadius.circular(10.sp)
            ),
            child:TextWidget(title: categories[index], color: index== selectIndex? Colors.white:Colors.black38, fontSize: 15, fontWeight: FontWeight.normal)
          ),
        ),
      ),
    );
  }
}