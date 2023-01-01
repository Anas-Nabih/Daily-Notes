part of 'add_category_cubit.dart';

@immutable
abstract class AddCategoryState {}

class AddCategoryInitial extends AddCategoryState {}

class AddCategoryLoading extends AddCategoryState {}

class AddCategorySuccess extends AddCategoryState {}

class AddCategoryFailure extends AddCategoryState {
  final String errorMsg;

  AddCategoryFailure({required this.errorMsg});
}
