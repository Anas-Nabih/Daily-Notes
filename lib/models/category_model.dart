import 'package:hive/hive.dart';
part 'category_model.g.dart';

@HiveType(typeId: 1)
class CategoryModel extends HiveObject {
  @HiveField(0)
  final int catId;
  @HiveField(1)
  String catName;


  CategoryModel(
      {required this.catId, required this.catName,});
}
