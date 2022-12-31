import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({Key? key, required this.icon, required this.onTapped})
      : super(key: key);

  final IconData icon;
  final Function()? onTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped ,
      child: Container(
          padding: EdgeInsets.all(1.h),
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.05),
              borderRadius: BorderRadius.circular(12)),
          child: Icon(
            icon,
            size: 4.h,
          )),
    );
  }
}
