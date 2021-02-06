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

class MyPresentation extends StatefulWidget {
  MyPresentation({Key? key}) : super(key: key);

  @override
  _MyPresentationState createState() => _MyPresentationState();
}

class _MyPresentationState extends State<MyPresentation> {
  double _viewPortFraction = 1;

  @override
  Widget build(BuildContext context) {
    return Presentation(
      onSlideChanged: onSlideChanged,
      viewPortFraction: _viewPortFraction,
      slides: [
        TitleSlide(),
        AgendaSlide(),
      ],
    );
  }

  void onSlideChanged(int index) {
    setState(() {
      if (index > 0) {
        _viewPortFraction = 0.8;
      } else {
        _viewPortFraction = 1;
      }
    });
  }
}
