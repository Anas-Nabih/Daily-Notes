import 'package:flutter/material.dart';
 import 'package:notes_app/widgets/tab_item.dart';

class CustomTabBar extends StatefulWidget {
   CustomTabBar({Key? key}) : super(key: key);

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  bool isAllTapped = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TabItem(title: "All",isAll: isAllTapped, onTapped: (){
            setState(() {
              isAllTapped = !isAllTapped;
            });
          }),
          TabItem(title: "Folder",isAll: isAllTapped, onTapped: (){
            setState(() {
              isAllTapped = !isAllTapped;
            });
          }),

        ],
      ),
    );
  }
}


