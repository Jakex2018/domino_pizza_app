import 'package:domino_pizza_app/constant.dart';
import 'package:domino_pizza_app/screen/home/widget/home_textWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PizzaBodyInfDetails extends StatelessWidget {
  const PizzaBodyInfDetails({
    super.key, required this.title, required this.price,
  });
  final String title;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          border: BorderDirectional(
        top: BorderSide(color: Colors.black12),
        bottom: BorderSide(color: Colors.black12),
      )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextWidget(
              title: title,
              color: kTextColor,
              fontSize: 20,
              fontWeight: FontWeight.normal),
          TextWidget(
              title: '\$${price}',
              color: kTextColor,
              fontSize: 20,
              fontWeight: FontWeight.normal),
          Icon(Icons.check_box_outlined)
        ],
      ),
    );
  }
}
