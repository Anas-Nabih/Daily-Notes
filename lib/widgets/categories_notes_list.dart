import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/edit_note/edit_note_view.dart';
import 'package:notes_app/widgets/note_item.dart';
import 'package:notes_app/widgets/notes_place_holder.dart';
import 'package:sizer/sizer.dart';

class CategoryNotesListView extends StatefulWidget {
  const CategoryNotesListView({Key? key, required this.catName}) : super(key: key);

  final String catName;

  @override
  State<CategoryNotesListView> createState() => _CategoryNotesListViewState();
}

class _CategoryNotesListViewState extends State<CategoryNotesListView> {
  void initState() {
    debugPrint("catergory name: ${widget.catName}");
    BlocProvider.of<NotesCubit>(context).fetchNotesWhen(catName: widget.catName);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        var notes = BlocProvider.of<NotesCubit>(context).notes ?? [];
        return notes.isEmpty ? const NotesPalaceHolder(
          title: "No Notes",
          subtitle: "Tap the Add button to create a note.",

        ) : ListView.separated(
          separatorBuilder: (context, index) => SizedBox(height: 2.h),
          itemCount: notes.length,
          itemBuilder: (context, index) => NoteItem(
              note: notes[index],
              onTapped: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditNoteView(note: notes[index]),
                  ))),
        );
      },
    );
  }
}
