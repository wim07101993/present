import 'package:flutter/material.dart';

class TitleWithBulletsSlide extends StatelessWidget {
  const TitleWithBulletsSlide({
    Key? key,
    required this.title,
    required this.bullets,
    this.titleAlign = TextAlign.center,
  }) : super(key: key);

  /// The title of the slide.
  final String title;

  /// The bullets which will be shown under the title.
  final List<Widget> bullets;

  /// The alignment of the title.
  final TextAlign titleAlign;

  @override
  Widget build(BuildContext context) {
    final list = <Widget>[];
    if (bullets.isNotEmpty) {
      list.add(bullets[0]);
      for (final bullet in bullets.skip(1)) {
        list.add(const SizedBox(height: 12));
        list.add(bullet);
      }
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline3,
          textAlign: titleAlign,
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: IntrinsicWidth(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: list,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
