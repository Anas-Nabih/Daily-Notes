import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notes_app/res/colors.dart';
import 'package:sizer/sizer.dart';

class FolderItem extends StatelessWidget {
  const FolderItem({
    required this.folderName,
    Key? key,
    required this.onTapped,
  }) : super(key: key);

  final String folderName;
  final void Function() onTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 2.h),
        decoration: BoxDecoration(
            color: MColors.kDarkContainerBG,
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            SvgPicture.asset("assets/images/folder.svg", height: 15.h),
            SizedBox(height: 2.h),
            Text(
              folderName,
              style: Theme.of(context).textTheme.subtitle1,
            )
          ],
        ),
      ),
    );
  }
}