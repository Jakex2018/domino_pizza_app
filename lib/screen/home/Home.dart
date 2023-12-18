import 'package:domino_pizza_app/screen/home/widget/home_body.dart';
import 'package:domino_pizza_app/widget/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final double widthTotal = MediaQuery.of(context).size.width;
    final double heightTotal = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: widthTotal,
        height: heightTotal,
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: HomeBody(widthTotal: widthTotal)),
      ),
      bottomNavigationBar: bottomNavBar(widthTotal),
    );
  }
}