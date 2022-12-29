import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notes_app/res/colors.dart';
import 'package:sizer/sizer.dart';

class FoldersViewBody extends StatelessWidget {
  const FoldersViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GridView.builder(
          itemCount: 12,
          padding: EdgeInsets.symmetric(horizontal: 3.w),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 25.h,
              crossAxisSpacing: 4.w,
              mainAxisSpacing: 2.h),
          itemBuilder: (context, index) => FolderItem(folderName: "Folder Name")),
    );
  }
}

class FolderItem extends StatelessWidget {
  const FolderItem({
    required this.folderName,
    Key? key,
  }) : super(key: key);

  final String folderName;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

// Image.asset("assets/images/openFolder.png")
