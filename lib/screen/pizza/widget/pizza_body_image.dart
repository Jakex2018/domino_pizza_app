import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PizzaBodyImage extends StatelessWidget {
  const PizzaBodyImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: EdgeInsets.only(bottom: 350.h),
        child: Image.asset(
          'asset/images/pizza02.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
