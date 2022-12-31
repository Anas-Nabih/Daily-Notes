import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:sizer/sizer.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({Key? key}) : super(key: key);

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
            CustomTextField(hintText: "Title",onSaved: (val)=>title = val),
            SizedBox(height: 2.h),
            CustomTextField(hintText: "Subject", maxLines: 5,onSaved: (val)=>subTitle = val),
            SizedBox(height: 4.h),
            CustomButton(
              onTapped: (){
                if(_formKey.currentState!.validate()){
                  _formKey.currentState!.save();
                  Navigator.pop(context);
                }else{
                  _autoValidateMode = AutovalidateMode.always;
                  setState(() {

                  });
                }
                },
            ),
            SizedBox(height: 4.h),
          ],
        ),
      ),
    );
  }
}
