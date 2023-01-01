import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/edit_note_colors_list.dart';
import 'package:notes_app/widgets/notes_app_bar.dart';
import 'package:sizer/sizer.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({Key? key,required this.note}) : super(key: key);
  final NoteModel note;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {

  String? title, content;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 1.h,horizontal: 3.w),
        child: Column(
          children: [
             CustomAppBar(onTapped: (){
               widget.note.title = title ?? widget.note.title;
               widget.note.subTitle = content ?? widget.note.subTitle;
               widget.note.save();
               BlocProvider.of<NotesCubit>(context).fetchAllNotes();
               Navigator.pop(context);
             },title:"Edit Note",
                icon: Icons.check),
            SizedBox(height: 4.h),
              CustomTextField(
                initialVal: widget.note.title,
                onChanged: (val)=> title = val,hintText: widget.note.title,),
            SizedBox(height: 4.h),
              CustomTextField(
              initialVal: widget.note.subTitle, onChanged: (val)=> content = val,hintText: widget.note.subTitle,maxLines: 6),
            const EditNoteColorsList(),
          ],
        ),
      ),
    );
  }
}
