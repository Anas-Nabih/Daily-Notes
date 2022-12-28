import 'package:flutter/material.dart';
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
                theme: ThemeData(
                  brightness: Brightness.dark,
                  useMaterial3: true
                ), home: const NotesView()));
  }
}
