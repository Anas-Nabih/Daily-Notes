import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/comman_utils/constants.dart';
import 'package:notes_app/models/category_model.dart';

part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit() : super(CategoriesInitial());

  List<CategoryModel>? categories;

  getAllCategories(){
   var box = Hive.box<CategoryModel>(Const.categoriesBox);
   categories = box.values.toList();
   emit(CategoriesSuccess());
  }
}
