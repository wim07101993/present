import 'package:flutter/material.dart';
import 'package:present/present.dart';

import 'slides.dart';
import 'theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      home: MyPresentation(),
    );
  }
}

class MyPresentation extends StatelessWidget {
  MyPresentation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Presentation(
      slides: [
        TitleSlide(),
        AgendaSlide(),
      ],
    );
  }
}
