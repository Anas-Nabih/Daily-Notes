import 'package:flutter/material.dart';
import 'package:notes_app/res/colors.dart';
import 'package:sizer/sizer.dart';

class FilterContainer extends StatelessWidget {
  const FilterContainer({
    Key? key,
    required this.title,
    required this.onTapped,
    required this.isAll,
  }) : super(key: key);

  final String title;
  final void Function()? onTapped;
  final bool isAll;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
                color: isAll ? Colors.white : Colors.white.withOpacity(0.7),
                fontSize: 13.sp),
          ),
          if (isAll && title == "All")
            Container(
              height: .5.h,
              width: 5.w,
              decoration: BoxDecoration(
                  color: MColors.kFilterIndicatorColor,
                  borderRadius: BorderRadius.circular(12)),
            ),
          if (isAll && title == "Folder")
            Container(
              height: .5.h,
              width: 12.w,
              decoration: BoxDecoration(
                  color: MColors.kFilterIndicatorColor,
                  borderRadius: BorderRadius.circular(12)),
            )
        ],
      ),
    );
  }
}
