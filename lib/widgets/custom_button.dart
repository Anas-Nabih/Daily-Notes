import 'package:flutter/material.dart';
import 'package:notes_app/res/colors.dart';
import 'package:sizer/sizer.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({required this.onTapped});

  final void Function()? onTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped ,
      child: Container(
        height: 8.h,
        decoration: BoxDecoration(
            color: MColors.kDarkContainerBG,
            borderRadius: BorderRadius.circular(12)
        ),
        child: Center(child: Text("Add Note",
          style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 13.sp),)),
      ),
    );
  }
}
