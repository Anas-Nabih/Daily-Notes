import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/add_category_bottom_sheet.dart';
import 'package:notes_app/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/widgets/custom_floating_action_btn.dart';
import 'package:notes_app/widgets/folders_view_body.dart';
import 'package:notes_app/widgets/home_tabs.dart';
import 'package:notes_app/widgets/notes_app_bar.dart';
import 'package:notes_app/widgets/notes_list_view.dart';
import 'package:sizer/sizer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: BlocConsumer<NotesCubit, NotesState>(
        listener: (context, state) {
          if (state is NotesAll) {
            BlocProvider.of<NotesCubit>(context).isAll = true;
           } else if (state is NotesFolder) {
            BlocProvider.of<NotesCubit>(context).isAll = false;
           }
        },
        builder: (context, state) => SafeArea(
          child: Scaffold(
            floatingActionButton: BlocProvider.of<NotesCubit>(context).isAll
                ? CustomFloatingActionButton(onTapped: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) => const AddNoteBottomSheet());
                  })
                : CustomFloatingActionButton(onTapped: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) => const AddCategoryBottomSheet());
                  }),
            body: Column(
              children: [
                Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 1.h, horizontal: 3.w),
                    child: CustomHomeAppBar(
                        onTapped: () {},
                        title: "Notes",
                        icon: Icons.search_outlined)),
                HomeTabs(),
                BlocProvider.of<NotesCubit>(context).isAll
                    ? const Expanded(child: NotesListView())
                    : const Expanded(child: FoldersViewBody())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
