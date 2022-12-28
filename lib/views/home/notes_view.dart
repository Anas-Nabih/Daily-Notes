import 'package:flutter/material.dart';
import 'package:notes_app/res/colors.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.kDarkModeBG,
      floatingActionButton: FloatingActionButton(backgroundColor: MColors.kSecondaryColor,child: const Icon(Icons.add),onPressed: (){},),
      body: const SafeArea(child: NotesViewBody()),
    );
  }
}
