import 'package:flutter/material.dart';
import 'package:notes_app/models/category_model.dart';
import 'package:notes_app/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/widgets/custom_floating_action_btn.dart';
import 'package:notes_app/widgets/notes_inside_category_body.dart';

class NotesInsideCategory extends StatelessWidget {
  const NotesInsideCategory({Key? key, required this.category})
      : super(key: key);

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: CustomFloatingActionButton(
          onTapped: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) => AddNoteBottomSheet(catName: category.catName));
          },
        ),
        body: NotesInsideCatBody(category: category),
      ),
    );
  }
}
