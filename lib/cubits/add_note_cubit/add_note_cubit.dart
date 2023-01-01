import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/comman_utils/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/res/colors.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());


  int currentIndex = 0;

  Color color = MColors.kDarkContainerBG;


  addNote(NoteModel note) async {

    note.color = color.value;

    emit(AddNoteLoading());

    try {
      var notesBox = Hive.box<NoteModel>(Const.notesBox);
      await notesBox.add(note);
       emit(AddNoteSuccess());
    } catch (e) {
       emit(AddNoteFailure(errorMsg: e.toString()));
      print(e.toString());
    }
  }

  changeColor({required int index}){
    currentIndex = index;
    emit(AddNoteColorChanged());
  }
}
