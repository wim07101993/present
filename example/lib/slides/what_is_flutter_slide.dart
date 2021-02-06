import 'package:flutter/material.dart';
import 'package:present/present.dart';

class WhatIsFlutterSlide extends StatelessWidget {
  const WhatIsFlutterSlide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TitleWithBulletsSlide(
      title:
          'A "tool" that allows you to build cross-platform applications with '
          'one programming language.',
      bullets: [
        const Text('- Native performance: runs in Dart-VM'),
        Row(children: [
          const Text('- Cross-platform: '),
          Image.asset('assets/images/android_logo.png', height: 36),
          const SizedBox(width: 16),
          Image.asset('assets/images/ios_logo.png', height: 36),
          const SizedBox(width: 16),
          Image.asset('assets/images/mac_logo.png', height: 36),
          const SizedBox(width: 16),
          Image.asset('assets/images/windows_logo.png', height: 36),
          const SizedBox(width: 16),
          Image.asset('assets/images/linux_logo.png', height: 36),
          const SizedBox(width: 16),
          const Text('Web'),
          Image.asset('assets/images/web_logo.png', height: 36),
        ]),
        Row(children: [
          const Text('- One programming language: Dart'),
          Image.asset('assets/images/dart_logo.png', height: 36),
        ]),
        const Text('- Very powerful UI-framework'),
      ],
    );
  }
}
