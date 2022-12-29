import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/notes_app_bar.dart';
import 'package:sizer/sizer.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 1.h,horizontal: 3.w),
        child: Column(
          children: [
            const CustomAppBar(title:"Edit Note",
                icon: Icons.check),
            SizedBox(height: 4.h),
            const CustomTextField(hintText: "Title",),
            SizedBox(height: 4.h),
            const CustomTextField(hintText: "Content",maxLines: 6),
          ],
        ),
      ),
    );
  }
}
