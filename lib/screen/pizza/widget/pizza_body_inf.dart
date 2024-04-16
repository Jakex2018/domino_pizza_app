import 'package:domino_pizza_app/constant.dart';
import 'package:domino_pizza_app/screen/home/widget/home_add_to_cart.dart';
import 'package:domino_pizza_app/screen/home/widget/home_textWidget.dart';
import 'package:domino_pizza_app/screen/pizza/widget/pizza_body_inf_details.dart';
import 'package:domino_pizza_app/screen/pizza/widget/pizza_title_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PizzaBodyInf extends StatelessWidget {
  const PizzaBodyInf({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0.h,
        left: 0.w,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .638,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50.sp),
              topRight: Radius.circular(50.sp),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10.0,
                spreadRadius: 1.0,
                offset: Offset(0.0, -5.0),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: aDefaultPadding * 1.7,
                vertical: aDefaultPadding * 1.2),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PizzaTitleIcon(),
                  SizedBox(height: 10.h),
                  TextWidget(
                      title: 'dsadas sad asdasd sadasdsad\nsadas das',
                      color: Colors.black38,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                  Padding(
                    padding:EdgeInsets.symmetric(vertical: 20.h),
                    child: Column(
                      children: [
                        PizzaBodyInfDetails(title: 'Small', price: '10',),
                        PizzaBodyInfDetails(title: 'Medium', price: '20',),
                        PizzaBodyInfDetails(title: 'Large', price: '30',)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Center(child: HomeAddToCart())
                ],
              ),
            ),
          ),
        ));
  }
}