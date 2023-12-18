import 'package:domino_pizza_app/constant.dart';
import 'package:domino_pizza_app/screen/home/widget/home_textWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class HomePizza extends StatelessWidget {
  const HomePizza({
    super.key,
    required this.widthTotal,
    required this.height, required this.title, required this.time, required this.price,
  });

  final double widthTotal, height;
  final String title,time;
  final int price;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: widthTotal * 0.4,
          height: height.h,
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
                blurRadius: 10, offset: Offset(0, 10), color: Colors.black12)
          ]),
          child: Column(
            children: [
              Image.asset(
                'asset/images/pizza02.png',
                fit: BoxFit.cover,
              ),
              TextWidget(
                  title: title,
                  color: kTextColor,
                  fontSize: 19,
                  fontWeight: FontWeight.bold),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.timelapse_outlined,
                        color: kTextColor,
                        size: 20.sp,
                      ),
                      TextWidget(
                          title: time,
                          color: kTextColor,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ],
                  ),
                  TextWidget(
                      title: '\$${price}',
                      color: kTextColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)
                ],
              )
            ],
          ),
        ),
        Positioned(
            top: 5.h,
            left: 0.w,
            child: Icon(
              Icons.favorite_border_outlined,
              color: kPrimaryColor,
            ))
      ],
    );
  }
}