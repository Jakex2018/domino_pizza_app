import 'package:domino_pizza_app/constant.dart';
import 'package:domino_pizza_app/screen/home/widget/home_textWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class HomeAddToCart extends StatelessWidget {
  const HomeAddToCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: aDefaultPadding * 1.1),
          width: 200.w,
          height: 40.h,
          decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: kPrimaryColor),
              borderRadius: BorderRadius.circular(10.sp)),
          child: Padding(
            padding: EdgeInsets.only(right: 110.w),
            child: Center(
                child: TextWidget(
                    title: 'NS.200',
                    color: kTextColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
          ),
        ),
        Positioned(
            top: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: aDefaultPadding * 1.1),
              width: 115.w,
              height: 40.h,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(10.sp)),
              child: Center(
                  child: TextWidget(
                      title: 'Add to cart',
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ))
      ],
    );
  }
}
