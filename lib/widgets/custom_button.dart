import 'package:flutter/material.dart';
import 'package:notes_app/res/colors.dart';
import 'package:sizer/sizer.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({this.title = "Add Note",required this.onTapped, this.isLoading = false});

  final void Function()? onTapped;
  final bool isLoading;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        height: 8.h,
        decoration: BoxDecoration(
            color: title == "Cancel" ?Colors.white.withOpacity(0.04) : MColors.kDarkContainerBG,
            borderRadius: BorderRadius.circular(12)),
        child: Center(
            child: !isLoading
                ? Text(title,
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(fontSize: 13.sp))
                : SizedBox(
                    height: 4.h,
                    width: 4.h,
                    child: const CircularProgressIndicator(
                      color: Colors.white,
                    ))),
      ),
    );
  }
}
