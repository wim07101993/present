import 'package:flutter/material.dart';

import 'flutter_architecture/nest_hub.dart';
import 'flutter_architecture/nest_hub_screen_code.dart';

class FlutterArchitecture extends StatefulWidget {
  const FlutterArchitecture({Key? key}) : super(key: key);

  @override
  _FlutterArchitectureState createState() => _FlutterArchitectureState();
}

class _FlutterArchitectureState extends State<FlutterArchitecture> {
  bool _isEmbedded = true;

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
        Expanded(
          child: GestureDetector(
            onTap: () =>
                _isEmbedded ? setState(() => _isEmbedded = !_isEmbedded) : null,
            child: Expanded(
              child: Row(
                children: [
                  Expanded(child: NestHub(isEmbedded: _isEmbedded)),
                  const SizedBox(width: 32),
                  const NestHubScreenCode(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
