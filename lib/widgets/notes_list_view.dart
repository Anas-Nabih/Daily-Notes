import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/edit_note/edit_note_view.dart';
import 'package:notes_app/widgets/note_item.dart';
import 'package:notes_app/widgets/notes_place_holder.dart';
import 'package:sizer/sizer.dart';

class NotesListView extends StatefulWidget {
  const   NotesListView({
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
    debugPrint("triggerd from build");
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        debugPrint("triggerd from builder");
        var notes = BlocProvider.of<NotesCubit>(context).notes ?? [];
        return notes.isEmpty
            ? const NotesPalaceHolder(
                title: "No Notes",
                subtitle: "Tap the Add button to create a note.",
              )
            : ListView.separated(
          padding: EdgeInsets.only(top: 1.h,left: 3.w,right: 3.w),
                separatorBuilder: (context, index) => SizedBox(height: 2.h),
                itemCount: notes.length,
                itemBuilder: (context, index) => NoteItem(
                    note: notes[index],
                    onTapped: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              EditNoteView(note: notes[index]),
                        ))),
              );
      },
    );
  }
}
