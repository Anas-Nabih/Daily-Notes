import 'package:flutter/material.dart';
import 'package:notes_app/widgets/folders_view_body.dart';
class FoldersView extends StatelessWidget {
  const FoldersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FoldersViewBody(),
    );
  }
}
