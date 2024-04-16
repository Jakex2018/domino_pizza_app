import 'package:domino_pizza_app/screen/home/widget/home_add_to_cart.dart';
import 'package:domino_pizza_app/screen/home/widget/home_category_list.dart';
import 'package:domino_pizza_app/screen/home/widget/home_deals_image.dart';
import 'package:domino_pizza_app/screen/home/widget/home_nav.dart';
import 'package:domino_pizza_app/screen/home/widget/home_pizza_list.dart';
import 'package:domino_pizza_app/screen/home/widget/home_title_sub.dart';
import 'package:flutter/material.dart';
class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
    required this.widthTotal,
  });

  final double widthTotal;

  @override
  Widget build(BuildContext context) {
    ;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        HomeNav(widthTotal: widthTotal),
        HomeTitleIcon(),
        CategoryList(),
        HomeTIlteSub(title: 'Deals',),
        HomeDealsImage(),
        HomeAddToCart(),
        HomeTIlteSub(title: 'Pizza',),
        HomePizzaList(widthTotal: widthTotal)
      ],
    );
  }
}