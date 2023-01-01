import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/comman_utils/constants.dart';
import 'package:notes_app/models/category_model.dart';

part 'add_category_state.dart';

class AddCategoryCubit extends Cubit<AddCategoryState> {
  AddCategoryCubit() : super(AddCategoryInitial());

  String catName = "";

  TextEditingController controller = TextEditingController();


  addCategory(CategoryModel category) async{
    emit(AddCategoryLoading());
    try{
      Box categoriesBox = Hive.box<CategoryModel>(Const.categoriesBox);
      await categoriesBox.add(category);
      print("catName: ");
      print("catName: ${category.catName}");
      emit(AddCategorySuccess());
    }catch(e){
      emit(AddCategoryFailure(errorMsg: "Some thing wrong happened: ${e.toString()}"));
    }
  }
}
