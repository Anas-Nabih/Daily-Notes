import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ArrowBack extends StatelessWidget {
  const ArrowBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: ()=>Navigator.pop(context),
        child: Icon(Icons.arrow_back_ios,size: 3.h));
  }
}
