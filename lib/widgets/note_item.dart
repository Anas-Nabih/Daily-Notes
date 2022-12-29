import 'package:flutter/material.dart';
import 'package:notes_app/res/colors.dart';
import 'package:sizer/sizer.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    required this.onTapped
  }) ;

  final VoidCallback onTapped;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.w),
        decoration: BoxDecoration(
            color: MColors.kDarkContainerBG,
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text("Data",
                  style:Theme.of(context).textTheme.headline1),
              subtitle: Text("Content", style:
              Theme.of(context).textTheme.subtitle1),
              trailing:
                  GestureDetector(onTap: () {}, child: Icon(Icons.delete)),
            ),
            SizedBox(height: 2.h),
            Align(
                alignment: Alignment.bottomRight,
                child: Text("28 DEC 2022", style: Theme.of(context).textTheme.subtitle2)),
          ],
        ),
      ),
    );
  }
}
