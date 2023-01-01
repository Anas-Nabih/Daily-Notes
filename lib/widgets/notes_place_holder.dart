import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NotesPalaceHolder extends StatelessWidget {
  const NotesPalaceHolder({
    Key? key, required this.title, required this.subtitle,
  }) : super(key: key);

  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(title,style: Theme.of(context).textTheme.bodyText1,),
        SizedBox(height: 1.h),
        Text(subtitle,style:Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12.sp),),
      ],
    ),);
  }
}