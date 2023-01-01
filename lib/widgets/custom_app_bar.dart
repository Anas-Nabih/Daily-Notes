import 'package:flutter/material.dart';
import 'package:notes_app/models/category_model.dart';
import 'package:sizer/sizer.dart';

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
        GestureDetector(
            onTap: ()=>Navigator.pop(context),
            child: Icon(Icons.arrow_back_ios,size: 3.h)),
        const Spacer(),
        Text(category.catName,style: Theme.of(context).textTheme.headlineLarge,),
        const Spacer(),
      ],
    );
  }
}