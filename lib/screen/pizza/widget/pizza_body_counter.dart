import 'package:domino_pizza_app/constant.dart';
import 'package:domino_pizza_app/screen/home/widget/home_textWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PizzaBodyCounter extends StatefulWidget {
  const PizzaBodyCounter({
    super.key,
  });

  @override
  State<PizzaBodyCounter> createState() => _PizzaBodyCounterState();
}

class _PizzaBodyCounterState extends State<PizzaBodyCounter> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 220.h,
        left: 110.w,
        child: Stack(
          children: [
            Container(
              width: 130.w,
              height: 40.h,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(10.sp)),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 9.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectIndex > 0 ? selectIndex -= 1 : false;
                        });
                      },
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectIndex += 1;
                        });
                      },
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0.h,
              left: 40.w,
              child: Container(
                padding: EdgeInsets.only(bottom: 12.h),
                height: 50.h,
                width: 50.w,
                color: Colors.white,
                child: Center(
                  child: TextWidget(
                      title: selectIndex.toString(),
                      color: kTextColor,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ));
  }
}