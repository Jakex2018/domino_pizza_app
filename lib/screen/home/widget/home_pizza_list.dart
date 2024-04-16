import 'package:domino_pizza_app/constant.dart';
import 'package:domino_pizza_app/models/pizza.dart';
import 'package:domino_pizza_app/screen/home/widget/home_pizza.dart';
import 'package:domino_pizza_app/screen/pizza/Pizza.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePizzaList extends StatelessWidget {
  const HomePizzaList({
    super.key,
    required this.widthTotal,
  });

  final double widthTotal;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Pizza(),
            ));
      },
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(
          child: Row(
            children: [
              // ignore: unused_local_variable
              ...(pizzas.map((pizza) {
                return Container(
                    margin: EdgeInsets.only(left: aDefaultPadding.w),
                    child: HomePizza(
                      widthTotal: widthTotal,
                      height: 200.h,
                      title: pizza.title,
                      time: pizza.time,
                      price: pizza.price,
                    ));
              }))
            ],
          ),
        ),
      ),
    );
  }
}
