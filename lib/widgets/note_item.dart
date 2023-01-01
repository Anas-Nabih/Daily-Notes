import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/res/colors.dart';
import 'package:sizer/sizer.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    required this.onTapped,required this.note
  }) ;

  final NoteModel note;

  final VoidCallback onTapped;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.w),
        decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text(note.title,
                  style:Theme.of(context).textTheme.headline1),
              subtitle: Text(note.subTitle, style:
              Theme.of(context).textTheme.subtitle1),
              trailing:
                  GestureDetector(onTap: () {
                    note.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  }, child: Icon(Icons.delete)),
            ),
            SizedBox(height: 2.h),
            Align(
                alignment: Alignment.bottomRight,
                child: Text(note.date, style: Theme.of(context).textTheme.subtitle2)),
          ],
        ),
      ),
    );
  }
}
