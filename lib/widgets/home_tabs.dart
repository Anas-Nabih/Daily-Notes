import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/filter_container.dart';

class HomeTabs extends StatelessWidget {
  const HomeTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FilterContainer(
                title: "All",
                onTapped: () =>
                    BlocProvider.of<NotesCubit>(context).emit(NotesAll()),
                isAll: BlocProvider.of<NotesCubit>(context).isAll),
            FilterContainer(
                title: "Folder",
                onTapped: () =>
                    BlocProvider.of<NotesCubit>(context).emit(NotesFolder()),
                isAll: !BlocProvider.of<NotesCubit>(context).isAll),
          ],
        ),
      ],
    );
  }
}
