import 'package:flutter/material.dart';

class TitleSlide extends StatelessWidget {
  const TitleSlide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Image.asset('assets/images/flutter_logo.png')],
    );
  }
}
