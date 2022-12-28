import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_item.dart';
import 'package:notes_app/widgets/notes_app_bar.dart';
import 'package:notes_app/widgets/search_icon.dart';
import 'package:sizer/sizer.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: 1.h,horizontal: 2.w),
      child: Column(
        children: [
         const NotesAppBar(),
          SizedBox(height: 2.h),
          Expanded(child: ListView.separated(
            physics: BouncingScrollPhysics(),
            separatorBuilder:
              (context, index) => SizedBox(height: 2.h),itemCount: 4,itemBuilder: (context, index) => NoteItem(),))
        ],
      ),
    );
  }
}






