import 'package:domino_pizza_app/screen/home/widget/home_button_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Container bottomNavBar(double widthTotal) {
  return Container(
    width: widthTotal,
    height: 60.h,
    decoration: BoxDecoration(color: Colors.white, boxShadow: [
      BoxShadow(blurRadius: 30, offset: Offset(0, 10), color: Colors.black26)
    ]),
    child: HomeBottomItem(),
  );
}
