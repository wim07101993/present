import 'package:flutter/material.dart';

class PresentationProgressIndicator extends StatelessWidget {
  const PresentationProgressIndicator({
    Key? key,
    required this.slideIndex,
    required this.slideCount,
  }) : super(key: key);

  /// The index of the current slide (0-based).
  final int slideIndex;

  /// The total number of slides in the presentation.
  final int slideCount;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textStyle = theme.textTheme.headline6;
    return Text.rich(
      TextSpan(children: [
        TextSpan(
          text: (slideIndex + 1).toString(),
          style: textStyle?.copyWith(color: theme.primaryColor),
        ),
        const TextSpan(text: ' / '),
        TextSpan(text: slideCount.toString()),
      ]),
      style: textStyle,
    );
  }
}
