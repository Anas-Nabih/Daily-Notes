import 'package:flutter/material.dart';
import 'package:notes_app/res/colors.dart';
import 'package:sizer/sizer.dart';

class TabItem extends StatelessWidget {
  const TabItem(
      {Key? key,
      required this.title,
      required this.isAll,
      required this.onTapped})
      : super(key: key);
  final String title;
  final bool isAll;
  final VoidCallback onTapped;

  @override
  Widget build(BuildContext context) {
    print("$isAll");
    return GestureDetector(
      onTap: onTapped,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
                color: isAll
                    ? MColors.kFilterIndicatorColor
                    : Colors.white.withOpacity(0.85),
                fontSize: 14.sp,
                fontWeight: isAll ? FontWeight.w400 : FontWeight.w300),
          ),
          isAll
              ? Container(
                  height: .5.h,
                  width: isAll ? 8.w : 18.w,
                  decoration: BoxDecoration(
                      color: MColors.kFilterIndicatorColor,
                      borderRadius: BorderRadius.circular(12)),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
