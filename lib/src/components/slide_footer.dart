import 'package:flutter/material.dart';

class SlideFooter extends StatelessWidget {
  const SlideFooter({
    Key? key,
    required this.onNext,
    required this.onPrevious,
    required this.currentSlideIndex,
    required this.slideCount,
  }) : super(key: key);

  static const _buttonTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: Colors.black54,
  );

  final void Function() onNext;
  final void Function() onPrevious;
  final int currentSlideIndex;
  final int slideCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (currentSlideIndex > 0) _previousButton() else Container(),
          if (currentSlideIndex < slideCount - 1) _nextButton(),
        ],
      ),
    );
  }

  Widget _previousButton() {
    return _button(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.arrow_back),
          Text('Previous', style: _buttonTextStyle),
        ],
      ),
      onPressed: onPrevious,
    );
  }

  Widget _nextButton() {
    return _button(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Next', style: _buttonTextStyle),
          Icon(Icons.arrow_forward),
        ],
      ),
      onPressed: onNext,
    );
  }

  Widget _button({required Widget child, required void Function() onPressed}) {
    return SizedBox(
      height: 40,
      width: 120,
      child: TextButton(
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
