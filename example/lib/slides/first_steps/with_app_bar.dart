import 'package:flutter/material.dart';

class WithAppbar extends StatelessWidget {
  const WithAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Demo Home Page')),
        body: const Center(
          child: Text('Hello world!'),
        ),
      ),
    );
  }
}
