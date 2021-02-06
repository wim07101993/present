import 'package:flutter/material.dart';

class SlideThumbnail extends StatelessWidget {
  const SlideThumbnail({
    Key? key,
    required this.child,
    this.onTap,
  }) : super(key: key);

  final Widget child;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: Theme.of(context).primaryColor,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: FittedBox(
          child: SizedBox(width: 1600, height: 900, child: child),
        ),
      ),
    );
  }
}
