import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key, required this.title, required this.color, required this.fontSize, required this.fontWeight,
  });
  final String title;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.lato(
        textStyle: TextStyle(fontWeight: fontWeight,color: color, decoration: TextDecoration.none, fontSize: fontSize.sp)
      ),
    );
  }
}
