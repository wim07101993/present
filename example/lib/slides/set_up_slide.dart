import 'package:flutter/material.dart';
import 'package:present/present.dart';

class SetUpSlide extends StatelessWidget {
  const SetUpSlide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TitleWithBulletsSlide(
      title: 'Set-up',
      bullets: [
        InstallItem(
          iconAsset: 'assets/images/android_studio_logo.png',
          name: 'Android Studio',
          link: 'https://developer.android.com/studio',
        ),
        InstallItem(
          iconAsset: 'assets/images/visual_studio_code_logo.png',
          name: 'Visual Studio Code',
          link: 'https://code.visualstudio.com/',
        ),
        InstallItem(
          iconAsset: 'assets/images/flutter_logo.png',
          name: 'Flutter',
          link: 'https://flutter.dev/docs/get-started/install',
        ),
        Text(''),
        Text('Plugins: Dart, Flutter, Flutter Intl, Flr, BLoC'),
      ],
    );
  }
}

class InstallItem extends StatelessWidget {
  const InstallItem({
    Key? key,
    required this.iconAsset,
    required this.name,
    required this.link,
  }) : super(key: key);

  final String iconAsset;
  final String name;
  final String link;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image.asset(iconAsset, width: 36),
      const SizedBox(width: 16),
      Text.rich(TextSpan(children: [
        TextSpan(text: '$name '),
        TextSpan(
          text: link,
          style: const TextStyle(
            decoration: TextDecoration.underline,
            color: Colors.blue,
            fontSize: 32,
          ),
        ),
      ])),
    ]);
  }
}
