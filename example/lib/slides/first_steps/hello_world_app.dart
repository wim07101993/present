import 'package:flutter/material.dart';

class HelloWorldApp extends StatelessWidget {
  const HelloWorldApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Text('Hello world!'),
    );
  }
}
