import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/comman_utils/utils.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/colors_list_view.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_form_field.dart';
import 'package:sizer/sizer.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({this.catName="CATEGORY",Key? key}) : super(key: key);
  final String catName;

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;

  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: _autoValidateMode,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            CustomTextFormField(hintText: "Title", onSaved: (val) => title = val),
            SizedBox(height: 2.h),
            CustomTextFormField(hintText: "Subject", maxLines: 5, onSaved: (val) => subTitle = val),
            SizedBox(height: 2.h),
            const ColorsListView(),
            SizedBox(height: 2.h),
            BlocBuilder<AddNoteCubit, AddNoteState>(
              builder: (context, state) {
                return CustomButton(
                  isLoading: state is AddNoteLoading ? true : false,
                  onTapped: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();

                      NoteModel note = NoteModel(
                          title: title!,
                          subTitle: subTitle!,
                          date: Utils.formatDate(DateTime.now()),
                          category: widget.catName,
                          color: Colors.red.value);

                      BlocProvider.of<AddNoteCubit>(context).addNote(note);
                    } else {
                      _autoValidateMode = AutovalidateMode.always;
                    }
                  },
                );
              },
            ),
            SizedBox(height: 2.h),
          ],
        ),
      ),
    );
  }
}
