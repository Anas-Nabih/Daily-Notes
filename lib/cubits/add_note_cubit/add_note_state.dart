part of 'add_note_cubit.dart';

@immutable
abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNoteColorChanged extends AddNoteState {}

class AddNoteFailure extends AddNoteState {
  AddNoteFailure({required this.errorMsg});

  final String errorMsg;
}
