import 'package:flutter/material.dart';
import 'package:notes_app/res/colors.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:sizer/sizer.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 4.h,right:4.w,left: 4.w),
     child: ListView(
       children: [
        const CustomTextField(hintText: "Title"),
         SizedBox(height: 2.h),
         const CustomTextField(hintText: "Subject",maxLength: 5),
         SizedBox(height: 4.h),
          CustomButton(onTapped: ()=>Navigator.pop(context),)
       ],
     ),
    );
  }
}



