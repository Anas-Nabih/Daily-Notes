import 'package:flutter/material.dart';
import 'package:notes_app/models/category_model.dart';
import 'package:notes_app/widgets/arrow_back.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.category,
  }) : super(key: key);

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ArrowBack(),
        const Spacer(),
        Text(category.catName,style: Theme.of(context).textTheme.headlineLarge,),
        const Spacer(),
      ],
    );
  }
}