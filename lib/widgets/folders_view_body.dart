import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/comman_utils/utils.dart';
import 'package:notes_app/cubits/categories_cubit/categories_cubit.dart';
import 'package:notes_app/views/category_notes/categories_notes.dart';
import 'package:notes_app/widgets/folder_item.dart';
import 'package:notes_app/widgets/notes_place_holder.dart';
import 'package:sizer/sizer.dart';

class FoldersViewBody extends StatefulWidget {
  const FoldersViewBody({Key? key}) : super(key: key);

  @override
  State<FoldersViewBody> createState() => _FoldersViewBodyState();
}

class _FoldersViewBodyState extends State<FoldersViewBody> {
  @override
  void initState() {
    BlocProvider.of<CategoriesCubit>(context).getAllCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<CategoriesCubit, CategoriesState>(
        builder: (context, state) {
          var categories =
              BlocProvider.of<CategoriesCubit>(context).categories ?? [];
          return categories.isEmpty
              ? const NotesPalaceHolder(
                  title: "No Folders",
                  subtitle: "Tap the Add button to create one.",
                )
              : GridView.builder(
                  itemCount: categories.length,
                  padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 3.w),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 25.h,
                      crossAxisSpacing: 4.w,
                      mainAxisSpacing: 2.h),
                  itemBuilder: (context, index) => FolderItem(
                      folderName: categories[index].catName,
                      onTapped: () => Utils.push(
                          context: context,
                          navigationScreen: CategoryNotes(
                            category: categories[index],
                          ))));
        },
      ),
    );
  }
}
