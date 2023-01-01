import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_folder_cubit/add_category_cubit.dart';
import 'package:notes_app/models/category_model.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/custom_text_form_field.dart';
import 'package:sizer/sizer.dart';

class AddCategoryBottomSheet extends StatelessWidget {
  const AddCategoryBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddCategoryCubit(),
      child: BlocConsumer<AddCategoryCubit, AddCategoryState>(
        listener: (context, state) {
          if (state is AddCategorySuccess) {
            Navigator.pop(context);
          } else if (state is AddCategoryFailure) {
            debugPrint(state.errorMsg);
          }
        },
        builder: (context, state){
          final addCatBloc =  BlocProvider.of<AddCategoryCubit>(context);
          return Container(
            padding: EdgeInsets.only(
                top: 4.h,
                right: 4.w,
                left: 4.w,
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomTextField(controller:addCatBloc.controller ,hintText: "Category Name",
                  onSaved: (val)=>addCatBloc.catName = val.toString()),
                  SizedBox(height: 4.h),
                  Row(
                    children: [
                      Flexible(
                          child: CustomButton(
                              title: "Cancel",
                              onTapped: () => Navigator.pop(context))),
                      SizedBox(width: 2.w),
                      Flexible(
                          child: CustomButton(
                              isLoading: state is AddCategoryLoading,
                              title: "Add Category",
                              onTapped: () {
                                CategoryModel category = CategoryModel(catId: 1,
                                    catName: addCatBloc.catName);
                                BlocProvider.of<AddCategoryCubit>(context).addCategory(category);
                              })),
                    ],
                  ),
                  SizedBox(height: 4.h),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
