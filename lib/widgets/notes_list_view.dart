import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note/edit_note_view.dart';
import 'package:notes_app/widgets/note_item.dart';
import 'package:sizer/sizer.dart';

class NotesListView extends StatefulWidget {
  const NotesListView({
    Key? key,
  }) : super(key: key);

  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView> {

  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
     super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
       var notes = BlocProvider.of<NotesCubit>(context).notes ?? [];
        return ListView.separated(
          separatorBuilder: (context, index) => SizedBox(height: 2.h),
          itemCount: notes.length,
          itemBuilder: (context, index) => NoteItem(
            note: notes[index],
              onTapped: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EditNoteView(),
                  ))),
        );
      },
    );
  }
}
