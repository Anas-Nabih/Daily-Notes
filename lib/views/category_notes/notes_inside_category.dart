import 'package:flutter/material.dart';
import 'package:notes_app/models/category_model.dart';
import 'package:notes_app/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/widgets/custom_floating_action_btn.dart';
import 'package:notes_app/widgets/category_notes_body.dart';

class CategoryNotes extends StatelessWidget {
  const CategoryNotes({Key? key, required this.category})
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
        body: CategoryNotesBody(category: category),
      ),
    );
  }
}
