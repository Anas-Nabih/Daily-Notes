import 'package:flutter/material.dart';
import 'package:notes_app/res/colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({required this.hintText,
     this.maxLines = 1, this.onSaved, this.onChanged,this.initialVal = ""});

  final String hintText;
  final String initialVal;
  final int maxLines;
  final Function(String?)? onSaved;
  final Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        initialValue: initialVal,
      onSaved: onSaved,
      onChanged: onChanged,
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
