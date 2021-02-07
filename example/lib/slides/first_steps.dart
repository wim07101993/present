import 'package:flutter/material.dart';

import 'first_steps/code.dart';
import 'first_steps/output.dart';

class Step {
  static const int helloWorld = 0;
  static const int helloWorldApp = 1;
  static const int helloWorldWithCenteredScaffold = 2;
  static const int withAppBar = 3;
  static const int demoApp = 4;

  static const int maxStep = 4;
}

class FirstSteps extends StatefulWidget {
  const FirstSteps({Key? key}) : super(key: key);

  @override
  _FirstStepsState createState() => _FirstStepsState();
}

class _FirstStepsState extends State<FirstSteps> {
  int _step = Step.helloWorld;
  int? _outputStep;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(child: _code()),
        const SizedBox(width: 32),
        Output(step: _outputStep),
      ],
    );
  }

  Widget _code() {
    return Container(
      padding: const EdgeInsets.all(32),
      color: const Color(0xFF263238),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.topLeft,
              child: FittedBox(fit: BoxFit.scaleDown, child: Code(step: _step)),
            ),
          ),
          _buttons(),
        ],
      ),
    );
  }

  Widget _buttons() {
    return Column(children: [
      SizedBox(
        height: 32,
        width: 110,
        child: ElevatedButton(
          onPressed: onNextPressed,
          child: const Text('Next'),
        ),
      ),
      const SizedBox(height: 16),
      SizedBox(
        height: 32,
        width: 110,
        child: ElevatedButton(
          onPressed: onRunPressed,
          child: const Text('Run'),
        ),
      ),
    ]);
  }

  void onNextPressed() {
    if (_step < Step.maxStep) {
      setState(() => _step++);
    }
  }

  void onRunPressed() {
    if (_outputStep != _step) {
      setState(() => _outputStep = _step);
    }
  }
}
