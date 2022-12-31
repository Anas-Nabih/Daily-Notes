import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/comman_utils/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());



  addNote(NoteModel note) async {

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
}
