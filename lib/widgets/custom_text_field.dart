import 'package:flutter/material.dart';
import 'package:notes_app/res/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({required this.hintText, this.maxLength = 1});

  final String hintText;
  final int maxLength;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: MColors.kDarkBorderColor,
      maxLines: maxLength,
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
        borderSide: const BorderSide(color: MColors.kDarkBorderColor));
  }
}
