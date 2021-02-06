import 'package:flutter/material.dart';

import 'flutter_architecture/nest_hub.dart';

class FlutterArchitecture extends StatelessWidget {
  const FlutterArchitecture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Text(
          'Everything is a widget',
          style: theme.textTheme.headline3,
          textAlign: TextAlign.center,
        ),
        const Expanded(child: NestHub()),
      ],
    );
  }
}
