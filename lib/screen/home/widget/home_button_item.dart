// ignore_for_file: override_on_non_overriding_member, duplicate_ignore
import 'package:domino_pizza_app/constant.dart';
import 'package:domino_pizza_app/models/bottom_nav_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBottomItem extends StatefulWidget {
  const HomeBottomItem({
    super.key,
  });

  @override
  State<HomeBottomItem> createState() => _HomeBottomItemState();
}

// ignore: duplicate_ignore
class _HomeBottomItemState extends State<HomeBottomItem> {
  int selectIndex = 0;

  // ignore: override_on_non_overriding_member
  @override
  void onSelect(int id) {
    setState(() {
      selectIndex = id;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 11.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: links
            .map((link) => GestureDetector(
                  onTap: () => onSelect(link.id),
                  child: Column(
                    children: [
                      Icon(
                        link.icon.icon,
                        color: link.id == selectIndex
                            ? kPrimaryColor
                            : Colors.black,
                      ),
                      Text(link.title),
                    ],
                  ),
                ))
            .toList(),
      ),
    );
  }
}