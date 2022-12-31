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
  await  Hive.openBox(Const.notesBox);
  Hive.registerAdapter(NoteModelAdapter());
  Bloc.observer = AppBlocObserver();
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) =>
            MultiBlocProvider(
              providers: [
                BlocProvider(create: (context) => AddNoteCubit(),),
              ],
              child: MaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: DarkStyles.darkTheme(context),
                  home: HomeView()),
            ));
  }
}
