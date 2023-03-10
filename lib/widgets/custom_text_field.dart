import 'package:flutter/material.dart';
import 'package:notes_app/res/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({required this.controller,required this.hintText, this.onSaved, this.onChanged,this.initialVal = ""});

  final String hintText;
  final String initialVal;
  final Function(String?)? onSaved;
  final Function(String?)? onChanged;
  final TextEditingController controller;

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
