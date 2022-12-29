import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({
    Key? key, required this.icon,
  }) : super(key: key);
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(1.h),
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(12)
        ),
        child: Icon(icon,size: 4.h,));
  }
}