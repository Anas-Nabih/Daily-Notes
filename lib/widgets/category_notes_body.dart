import 'package:flutter/material.dart';
import 'package:notes_app/models/category_model.dart';
import 'package:notes_app/widgets/categories_notes_list.dart';
import 'package:sizer/sizer.dart';

class CategoryNotesBody extends StatelessWidget {
  const CategoryNotesBody({Key? key, required this.category}) : super(key: key);

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 3.w),
      child: CategoryNotesListView(catName: category.catName),
    );
  }
}
