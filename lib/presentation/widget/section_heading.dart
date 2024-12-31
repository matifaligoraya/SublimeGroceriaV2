import 'package:flutter/material.dart';
import 'package:sublime_groceria/common/colors.dart';

class SublimeSectionHeading extends StatelessWidget {
  final String headerText;
  final String indicatorText;
  final Color indicatorColor;

  const SublimeSectionHeading(
      {super.key,
      required this.headerText,
      this.indicatorText = 'See More',
      this.indicatorColor = AppColors.Info});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          headerText,
          style: Theme.of(context).textTheme.displayMedium,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              indicatorText,
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    color: indicatorColor,
                  ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2.0, left: 5),
              child: CircleAvatar(
                radius: 10,
                backgroundColor: indicatorColor,
                child: Icon(Icons.chevron_right_rounded,
                    color: Theme.of(context).canvasColor, size: 15),
              ),
            )
          ],
        ),
      ],
    );
  }
}
