import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_form.dart';
import 'package:sizer/sizer.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 4.h, right: 4.w, left: 4.w),
      child: AddNoteForm(),
    );
  }
}
