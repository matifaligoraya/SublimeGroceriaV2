import 'package:flutter/material.dart';

class BottomNavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isActive;

  const BottomNavItem({
    super.key,
    required this.icon,
    required this.label,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: isActive ? const Color(0xff1B7C3F) : const Color(0xff0F172A),
          size: 25,
        ),
        Text(
          label,
          style: TextStyle(
            color: isActive ? const Color(0xff1B7C3F) : const Color(0xff0F172A),
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
