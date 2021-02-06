import 'package:flutter/material.dart';
import 'package:present/src/components/presentation_progress_indicator.dart';

import 'time.dart';

class SlideHeader extends StatelessWidget {
  const SlideHeader({
    Key? key,
    this.title,
    required this.slideIndex,
    required this.slideCount,
  }) : super(key: key);

  final String? title;
  final int slideIndex;
  final int slideCount;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final sidesStyle = theme.textTheme.headline6;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: Row(children: [
        SizedBox(
          width: 120,
          child: PresentationProgressIndicator(
            slideIndex: slideIndex,
            slideCount: slideCount,
          ),
        ),
        if (title?.isNotEmpty == true)
          Expanded(
            child: Text(
              title!,
              style: theme.textTheme.headline4,
              textAlign: TextAlign.center,
            ),
          )
        else
          const Spacer(),
        SizedBox(
          width: 120,
          child: Time(
            style: sidesStyle,
            textAlign: TextAlign.right,
          ),
        ),
      ]),
    );
  }
}
