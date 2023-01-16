import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/comman_utils/utils.dart';
import 'package:notes_app/comman_utils/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;

  bool isAll = true;

  triggerIsAll({required bool isAll}){
    if(isAll){
      emit(NotesAll());
    }else{
      emit(NotesFolder());
    }
  }

  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(Const.notesBox);
    notes = notesBox.values.toList();
    emit(NotesSuccess());
  }

  List<NoteModel>? selectedNotes;

  fetchNotesWhen({required String categoryName}) {
    var notesBox = Hive.box<NoteModel>(Const.notesBox);
    selectedNotes = notesBox.values
        .where((note) => note.category.contains(categoryName))
        .toList();
    emit(NotesSuccess());
  }
}
