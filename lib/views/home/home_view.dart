import 'package:flutter/material.dart';
import 'package:notes_app/views/categories/categories_view.dart';
import 'package:notes_app/views/notes_view/notes_view.dart';
import 'package:notes_app/widgets/notes_app_bar.dart';
import 'package:sizer/sizer.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final List<Widget> tabs = [const NotesView(), const CategoriesView()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          body: Column(
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 3.w),
                  child: CustomHomeAppBar(
                      onTapped: () {},
                      title: "Notes",
                      icon: Icons.search_outlined)),
              TabBar(tabs: [
                Tab(
                  icon: Text("All"),
                ),
                Tab(
                  icon: Text("Folder"),
                ),
              ]),
              Expanded(
                child: TabBarView(children: tabs),
              )
            ],
          ),
        ),
      ),
    );
  }
}
