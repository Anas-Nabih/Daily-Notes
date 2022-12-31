import 'package:flutter/material.dart';
import 'package:notes_app/widgets/search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    required this.title,
    required this.icon,
    required this.onTapped
  });

  final String title;
  final IconData icon;
  final Function()? onTapped;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: Theme.of(context).textTheme.headlineLarge),
        const Spacer(),
        SearchIcon(
          onTapped: onTapped ?? (){},
          icon: icon,
        )
      ],
    );
  }
}
