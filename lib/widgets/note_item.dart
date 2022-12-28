import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 30.h,
      padding: EdgeInsets.symmetric(vertical: 2.h,horizontal: 4.w),
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Data",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600)),
          SizedBox(height: 2.h),
          Text("Content",style: TextStyle(fontSize: 14.sp)),

        ],
      ),
    );
  }
}