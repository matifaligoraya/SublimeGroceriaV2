import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final String actionText;

  const SectionHeader({
    super.key,
    required this.title,
    required this.actionText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xff1B7C3F),
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            Text(
              actionText,
              style: const TextStyle(
                fontSize: 10,
                color: Color(0xff2E98D7),
                fontWeight: FontWeight.bold,
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Color(0xff2E98D7),
              size: 10,
            ),
          ],
        ),
      ],
    );
  }
}
