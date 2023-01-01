import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notes_app/cubits/categories_cubit/categories_cubit.dart';
import 'package:notes_app/res/colors.dart';
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
          return GridView.builder(
              itemCount: categories.length,
              padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 3.w),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 25.h,
                  crossAxisSpacing: 4.w,
                  mainAxisSpacing: 2.h),
              itemBuilder: (context, index) =>
                  FolderItem(folderName: categories[index].catName));
        },
      ),
    );
  }
}

class FolderItem extends StatelessWidget {
  const FolderItem({
    required this.folderName,
    Key? key,
  }) : super(key: key);

  final String folderName;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

// Image.asset("assets/images/openFolder.png")
