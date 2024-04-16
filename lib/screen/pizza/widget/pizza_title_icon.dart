import 'package:domino_pizza_app/constant.dart';
import 'package:domino_pizza_app/screen/home/widget/home_textWidget.dart';
import 'package:flutter/material.dart';

class PizzaTitleIcon extends StatelessWidget {
  const PizzaTitleIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextWidget(
            title: 'Chicken Supreme Pizza',
            color: kTextColor,
            fontSize: 18,
            fontWeight: FontWeight.bold),
        Icon(Icons.favorite, color: kredColor)
      ],
    );
  }
}
