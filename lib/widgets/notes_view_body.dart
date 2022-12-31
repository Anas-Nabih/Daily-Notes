import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_list_view.dart';
import 'package:sizer/sizer.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 3.w),
      child: Column(
        children: [
          // const CustomAppBar(title:"Notes",icon: Icons.search_outlined),
          SizedBox(height: 2.h),
          const Expanded(child: NotesListView())
        ],
      ),
    );
  }
}
