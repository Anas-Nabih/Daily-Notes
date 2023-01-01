import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/add_note_form.dart';
import 'package:sizer/sizer.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({this.catName = "CATEGORY",Key? key}) : super(key: key);
  final String catName;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteSuccess) {
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          } else if (state is AddNoteFailure) {
            print("Failed: ${state.errorMsg}");
          }
        },
        builder: (context, state) => AbsorbPointer(
          absorbing: state is AddNoteLoading ? true : false,
          child: Padding(
            padding: EdgeInsets.only(
                top: 4.h,
                right: 4.w,
                left: 4.w,
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: AddNoteForm(catName: catName),
          ),
        ),
      ),
    );
  }
}
