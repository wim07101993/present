import 'package:flutter/material.dart';
import 'package:present/present.dart';

import 'slides.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      home: const MyPresentation(),
    );
  }
}

class MyPresentation extends StatefulWidget {
  const MyPresentation({Key? key}) : super(key: key);

  @override
  _MyPresentationState createState() => _MyPresentationState();
}

class _MyPresentationState extends State<MyPresentation> {
  final controller = PresentationController();
  double _viewPortFraction = 1;
  bool _showHeader = false;
  bool _showFooter = false;

  @override
  Widget build(BuildContext context) {
    return Presentation(
      title: 'Flutter workshop',
      controller: controller,
      onSlideChanged: onSlideChanged,
      viewPortFraction: _viewPortFraction,
      showHeader: _showHeader,
      showFooter: _showFooter,
      slides: const [
        // TitleSlide(),
        // AgendaSlide(),
        // WhatIsFlutterSlide(),
        // EverythingIsAWidgetSlide(),
        // SetUpSlide(),
        FirstSteps(),
      ],
    );
  }

  void onSlideChanged(int index) {
    setState(() {
      if (index > 0) {
        _viewPortFraction = 0.9;
        _showHeader = true;
        _showFooter = true;
      } else {
        _viewPortFraction = 1;
        _showHeader = false;
        _showFooter = false;
      }
    });
  }
}
