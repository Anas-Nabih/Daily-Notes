import 'package:flutter/material.dart';
import 'package:notes_app/res/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({required this.hintText, this.maxLines = 1, this.onSaved});

  final String hintText;
  final int maxLines;
  final Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (val){
        if(val?.isEmpty ?? true){
          return "Failed is required";
        }else {
          return null;
        }
      },
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
