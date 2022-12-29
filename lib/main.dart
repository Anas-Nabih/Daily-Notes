import 'package:flutter/material.dart';
import 'package:notes_app/res/theme/dark_theme_style.dart';
import 'package:notes_app/views/home/notes_view.dart';
import 'package:sizer/sizer.dart';

void main() {
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
                home: const NotesView()));
  }
}
