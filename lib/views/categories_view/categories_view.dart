import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_category_bottom_sheet.dart';
import 'package:notes_app/widgets/custom_floating_action_btn.dart';
import 'package:notes_app/widgets/folders_view_body.dart';
class CategoriesView extends StatelessWidget {
  const CategoriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CustomFloatingActionButton(onTapped: (){
        showModalBottomSheet(context: context, builder: (context)=> const AddCategoryBottomSheet());
      }),
      body: FoldersViewBody(),
    );
  }
}
