import 'package:flutter/material.dart';

class HelloWorldWithCenteredScaffold extends StatelessWidget {
  const HelloWorldWithCenteredScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello world!'),
        ),
      ),
    );
  }
}
