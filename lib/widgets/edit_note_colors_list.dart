import 'package:flutter/material.dart';
import 'package:notes_app/res/colors.dart';
import 'package:notes_app/widgets/color_ite,.dart';
import 'package:sizer/sizer.dart';

class EditNoteColorsList extends StatefulWidget {
  const EditNoteColorsList({Key? key}) : super(key: key);

  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4.h),
      height: 3.h * 2,
      child:ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: MColors.kColors.length,
        itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              // BlocProvider.of<AddNoteCubit>(context).color = MColors.kColors[index];
              currentIndex = index;
              setState(() {});
            },
            child: ColorItem(color:MColors.kColors[index],
                isActive: currentIndex == index)),
      ),
    );
  }
}
