import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/comman_utils/constants.dart';
import 'package:notes_app/res/theme/dark_theme_style.dart';
import 'package:notes_app/views/home/home_view.dart';
import 'package:sizer/sizer.dart';

void main() async{
  await Hive.initFlutter();
  await  Hive.openBox(Const.noteBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) =>
            MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: DarkStyles.darkTheme(context),
                home: HomeView()));
  }
}
