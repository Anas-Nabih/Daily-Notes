import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notes_app/comman_utils/utils.dart';
import 'package:notes_app/cubits/categories_cubit/categories_cubit.dart';
import 'package:notes_app/res/colors.dart';
import 'package:notes_app/views/notes_inside_category/notes_inside_category.dart';
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
          return categories.isEmpty ? const NotesPalaceHolder(
            title: "No Folders",
            subtitle: "Tap the Add button to create one.",
          ) : GridView.builder(
              itemCount: categories.length,
              padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 3.w),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 25.h,
                  crossAxisSpacing: 4.w,
                  mainAxisSpacing: 2.h),
              itemBuilder: (context, index) =>
                  FolderItem(folderName: categories[index].catName,onTapped: ()=> Utils.push(context: context, navigationScreen:  NotesInsideCategory(category: categories[index],))));
        },
      ),
    );
  }
}

class FolderItem extends StatelessWidget {
  const FolderItem({
    required this.folderName,
    Key? key, required this.onTapped,
  }) : super(key: key);

  final String folderName;
  final void Function() onTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 2.h),
        decoration: BoxDecoration(
            color: MColors.kDarkContainerBG,
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            SvgPicture.asset("assets/images/folder.svg", height: 15.h),
            SizedBox(height: 2.h),
            Text(
              folderName,
              style: Theme.of(context).textTheme.subtitle1,
            )
          ],
        ),
      ),
    );
  }
}

// Image.asset("assets/images/openFolder.png")
