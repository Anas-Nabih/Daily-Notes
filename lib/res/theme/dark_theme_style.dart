import 'package:flutter/material.dart';
import 'package:notes_app/res/colors.dart';
import 'package:sizer/sizer.dart';

class DarkStyles {
  static ThemeData darkTheme(BuildContext context) {
    return ThemeData(
        useMaterial3: true,

        /// Colors
        scaffoldBackgroundColor: MColors.kDarkModeBG,
        iconTheme:const IconThemeData(color: Colors.white) ,


        /// Text Styles
        textTheme: TextTheme(
          headline1: TextStyle(color: Colors.white,fontSize: 14.sp, fontWeight: FontWeight.w600),
          subtitle1: TextStyle(color: Colors.white70,fontWeight: FontWeight.w400,fontSize: 12.sp),
          subtitle2: TextStyle(color: Colors.white54,fontWeight: FontWeight.w400,fontSize: 9.sp),
          headlineLarge: TextStyle(color: Colors.white,fontSize: 14.sp, fontWeight: FontWeight.w600)),

      /// List Tile Theme
      listTileTheme: const ListTileThemeData(
        iconColor: Colors.white,
      ),
    );
  }
}
