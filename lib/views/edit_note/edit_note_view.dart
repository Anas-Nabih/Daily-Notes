import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/res/colors.dart';
import 'package:notes_app/widgets/edit_note_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({Key? key,required this.note}) : super(key: key);

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: note.color == 318767103?MColors.kDarkScaffoldBG : Color(note.color),
      body: EditNoteBody(note: note),
    );
  }
}
