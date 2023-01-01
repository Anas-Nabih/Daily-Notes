import 'package:flutter/material.dart';
import 'package:notes_app/models/category_model.dart';
import 'package:notes_app/widgets/notes_place_holder.dart';
import 'package:sizer/sizer.dart';

class NotesInsideCatBody extends StatelessWidget {
  const NotesInsideCatBody({Key? key, required this.category}) : super(key: key);

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 3.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              category.catName,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          SizedBox(height: 40.h),
          const NotesPalaceHolder(
            title: "No Notes",
            subtitle: "Tap the Add button to create a note.",

          ),
          Spacer(),
        ],
      ),
    );
  }
}
