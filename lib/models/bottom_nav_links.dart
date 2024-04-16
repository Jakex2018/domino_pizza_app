import 'package:flutter/material.dart';

class BottomNavLinks {
  final int id;
  final String title;
  final Icon icon;

  BottomNavLinks({
    required this.id,
    required this.title,
    required this.icon,
  });
}

List<BottomNavLinks> links = [
  BottomNavLinks(id: 1, title: 'Home', icon: Icon(Icons.home)),
  BottomNavLinks(id: 2, title: 'Cart', icon: Icon(Icons.card_travel)),
  BottomNavLinks(id: 3, title: 'My orders', icon: Icon(Icons.badge)),
  BottomNavLinks(id: 4, title: 'Account', icon: Icon(Icons.contacts_rounded)),
];
