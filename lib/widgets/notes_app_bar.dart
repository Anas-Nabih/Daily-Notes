import 'package:flutter/material.dart';
import 'package:notes_app/widgets/search_icon.dart';
import 'package:sizer/sizer.dart';
class NotesAppBar extends StatelessWidget {
  const NotesAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Notes",style: Theme.of(context).textTheme.headlineLarge),
        const Spacer(),
        const SearchIcon()
      ],
    );
  }
}
