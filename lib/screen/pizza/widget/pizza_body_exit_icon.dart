import 'package:domino_pizza_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PizzaBodyExitIcon extends StatelessWidget {
  const PizzaBodyExitIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 40.h,
        left: 12.w,
        child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_new,
              color: kTextColor,
            )));
  }
}
