import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class HomeDealsImage extends StatelessWidget {
  const HomeDealsImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
      height: 160.h,
      child: Image.asset(
        'asset/images/pizza01.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}