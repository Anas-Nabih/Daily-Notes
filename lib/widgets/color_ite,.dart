import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({
    Key? key,
    required this.isActive, required this.color,
  }) : super(key: key);

  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.w),
        child: isActive
            ? CircleAvatar(
          radius: 3.5.h,
          backgroundColor: Colors.white,
          child: CircleAvatar(radius: 2.7.h, backgroundColor: color),
        )
            : CircleAvatar(radius: 3.h, backgroundColor: color));
  }
}
