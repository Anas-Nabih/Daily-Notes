import 'package:hive/hive.dart';
part 'category_model.g.dart';

@HiveType(typeId: 0)
class CategoryModel extends HiveObject {
  @HiveField(0)
  final int catId;
  @HiveField(1)
  String catName;
  @HiveField(2)
  final int numOfNotes;

  CategoryModel(
      {required this.catId, required this.catName, required this.numOfNotes});
}
