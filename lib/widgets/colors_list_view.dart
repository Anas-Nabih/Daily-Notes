import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:sizer/sizer.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({Key? key}) : super(key: key);

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = [
    const Color(0xffedede9),
   const Color(0xffd6ccc2),
   const Color(0xfff5ebe0),
   const Color(0xffe3d5ca),
   const Color(0xffd5bdaf),
   const Color(0xffcdb4db),
   const Color(0xffffc8dd),
   const Color(0xffffafcc),
   const Color(0xffbde0fe),
   const Color(0xffa2d2ff),
   const Color(0xffccd5ae),
   const Color(0xffe9edc9),
   const Color(0xfffefae0),
   const Color(0xfffaedcd),
   const Color(0xffd4a373),
   const Color(0xffddbea9),
   const Color(0xffffe8d6),
   const Color(0xffb7b7a4),
   const Color(0xffa5a58d),
   const Color(0xff6b705c),
    Colors.black26,
    Colors.black
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 3.h * 2,
      child: BlocBuilder<AddNoteCubit,AddNoteState>(
        builder: (context, state) => ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(color:colors[index],isActive: currentIndex == index)),
        ),
      ),
    );
  }
}

class ColorItem extends StatefulWidget {
  const ColorItem({
    Key? key,
    required this.isActive, required this.color,
  }) : super(key: key);

  final bool isActive;
  final Color color;

  @override
  State<ColorItem> createState() => _ColorItemState();
}

class _ColorItemState extends State<ColorItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.w),
        child: widget.isActive
            ? CircleAvatar(
                radius: 3.5.h,
                backgroundColor: Colors.white,
                child: CircleAvatar(radius: 2.7.h, backgroundColor: widget.color),
              )
            : CircleAvatar(radius: 3.h, backgroundColor: widget.color));
  }
}
