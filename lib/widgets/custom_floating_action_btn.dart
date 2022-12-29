import 'package:flutter/material.dart';
import 'package:notes_app/res/colors.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    required this.onTapped, Key? key,
  }) : super(key: key);

  final VoidCallback onTapped;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: MColors.kFloatingActionBtnColor,
      onPressed: onTapped,
      child: const Icon(Icons.add),
    );
  }
}