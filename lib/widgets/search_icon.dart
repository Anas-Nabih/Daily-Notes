import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(1.h),
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(12)
        ),
        child: Icon(Icons.search_outlined,size: 4.h,));
  }
}