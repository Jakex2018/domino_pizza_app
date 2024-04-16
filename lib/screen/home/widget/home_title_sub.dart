import 'package:domino_pizza_app/constant.dart';
import 'package:domino_pizza_app/screen/home/widget/home_textWidget.dart';
import 'package:flutter/material.dart';
class HomeTIlteSub extends StatelessWidget {
  const HomeTIlteSub({
    super.key, required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: aDefaultPadding + 5, vertical: aDefaultPadding / 1.2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextWidget(
              title: title,
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold),
          TextWidget(
              title: 'view all',
              color: Color(0xFFB0D0E2),
              fontSize: 13,
              fontWeight: FontWeight.bold),
        ],
      ),
    );
  }
}

class HomeTitleIcon extends StatelessWidget {
  const HomeTitleIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: aDefaultPadding + 5, vertical: aDefaultPadding / 1.2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextWidget(
              title: 'Menu',
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold),
          Icon(
            Icons.search,
            color: kTextColor,
          )
        ],
      ),
    );
  }
}
