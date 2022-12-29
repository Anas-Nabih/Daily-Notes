import 'package:flutter/material.dart';
import 'package:notes_app/res/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({required this.hintText, this.maxLines = 1});

  final String hintText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: MColors.kDarkBorderColor,
      maxLines: maxLines,
      decoration: InputDecoration(
          hintText: hintText,
          border: buildBorderStyle(),
          enabledBorder: buildBorderStyle(),
          focusedBorder: buildBorderStyle()),
    );
  }

  OutlineInputBorder buildBorderStyle() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide:  BorderSide(color: MColors.kDarkBorderColor));
  }
}
