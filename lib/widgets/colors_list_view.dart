import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/res/colors.dart';
import 'package:notes_app/widgets/color_ite,.dart';
import 'package:sizer/sizer.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({Key? key}) : super(key: key);

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 3.h * 2,
      child:ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: MColors.kColors.length,
        itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              BlocProvider.of<AddNoteCubit>(context).color = MColors.kColors[index];
              currentIndex = index;
              setState(() {});
            },
            child: ColorItem(color:MColors.kColors[index],isActive: currentIndex == index)),
      ),
    );
  }
}


