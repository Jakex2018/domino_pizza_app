import 'package:domino_pizza_app/screen/pizza/widget/pizza_body_counter.dart';
import 'package:domino_pizza_app/screen/pizza/widget/pizza_body_exit_icon.dart';
import 'package:domino_pizza_app/screen/pizza/widget/pizza_body_image.dart';
import 'package:domino_pizza_app/screen/pizza/widget/pizza_body_inf.dart';
import 'package:flutter/material.dart';

class PizzaBody extends StatelessWidget {
  const PizzaBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      PizzaBodyImage(),
      PizzaBodyInf(),
      PizzaBodyCounter(),
      PizzaBodyExitIcon(),
    ]);
  }
}