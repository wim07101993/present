import 'package:example/slides/first_steps/demo_app.dart';
import 'package:example/slides/first_steps/with_app_bar.dart';
import 'package:flutter/material.dart' hide Step;

import '../first_steps.dart';
import 'hello_world.dart';
import 'hello_world_app.dart';
import 'hello_world_with_centered_scaffold.dart';

class Output extends StatelessWidget {
  const Output({
    Key? key,
    required this.step,
  }) : super(key: key);

  final int? step;

  @override
  Widget build(BuildContext context) {
    Widget widget;
    switch (step) {
      case Step.helloWorld:
        widget = const HelloWorld();
        break;
      case Step.helloWorldApp:
        widget = const HelloWorldApp();
        break;
      case Step.helloWorldWithCenteredScaffold:
        widget = const HelloWorldWithCenteredScaffold();
        break;
      case Step.withAppBar:
        widget = const WithAppbar();
        break;
      case Step.demoApp:
        widget = const DemoApp();
        break;
      default:
        widget = Container();
        break;
    }
    return FittedBox(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(width: 8),
          borderRadius: BorderRadius.circular(32),
          boxShadow: [
            BoxShadow(color: Theme.of(context).shadowColor, blurRadius: 8)
          ],
        ),
        padding: const EdgeInsets.symmetric(vertical: 32),
        child: Container(
          height: 780,
          width: 360,
          color: Colors.white,
          child: widget,
        ),
      ),
    );
  }
}
