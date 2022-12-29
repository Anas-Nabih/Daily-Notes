import 'package:flutter/material.dart';
import 'package:notes_app/res/colors.dart';
import 'package:notes_app/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.kDarkModeBG,
      floatingActionButton: FloatingActionButton(
        backgroundColor: MColors.kSecondaryColor,
        child: const Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: MColors.kDarkModeBG,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              context: context,
              builder: (context) => const AddNoteBottomSheet());
        },
      ),
      body: const SafeArea(child: NotesViewBody()),
    );
  }
}