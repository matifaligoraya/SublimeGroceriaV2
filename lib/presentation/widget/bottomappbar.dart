import 'package:flutter/material.dart';

class BottomNavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final int isActive;
  final VoidCallback? onTap;

  const BottomNavItem({
    super.key,
    required this.icon,
    required this.label,
    required this.isActive,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: const Color(0xff1B7C3F),
          size: 25,
        ),
        Text(
          label,
          style: TextStyle(
            color: const Color(0xff1B7C3F),
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
