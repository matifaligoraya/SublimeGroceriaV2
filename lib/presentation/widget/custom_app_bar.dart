import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leading;
  final List<Widget>? actions; // Use actions instead of trailing
  final double height;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.leading,
    this.actions, // Pass actions as a list of widgets
    this.height = 56.0, // Default height for AppBar
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading ??
          IconButton(
            icon: const Icon(Icons.menu), // Default leading icon
            onPressed: () {
              // Handle leading action
            },
          ),
      title: Text(title),
      actions: actions, // Set actions for the trailing part of the AppBar
      centerTitle: true, // Centers the title
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
