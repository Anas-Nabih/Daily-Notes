import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/comman_utils/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/res/theme/dark_theme_style.dart';
import 'package:notes_app/app_bloc_observer.dart';
import 'package:notes_app/views/home/home_view.dart';
import 'package:sizer/sizer.dart';

void main() async{
  await Hive.initFlutter();
  Bloc.observer = AppBlocObserver();

  Hive.registerAdapter(NoteModelAdapter());
  await  Hive.openBox<NoteModel>(Const.notesBox);

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) =>
            MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: DarkStyles.darkTheme(context),
                home: HomeView()));
  }
}
