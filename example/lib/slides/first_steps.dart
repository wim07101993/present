import 'package:flutter/material.dart';
import 'package:present/present.dart';

import 'first_steps/hello_world.dart';
import 'first_steps/hello_world_app.dart';
import 'first_steps/hello_world_with_centered_scaffold.dart';
import 'first_steps/lines.dart' as lines;
import 'first_steps/text_styles.dart';

class Step {
  static const int helloWorld = 0;
  static const int helloWorldApp = 1;
  static const int helloWorldWithCenteredScaffold = 2;
}

class FirstSteps extends StatefulWidget {
  const FirstSteps({Key? key}) : super(key: key);

  @override
  _FirstStepsState createState() => _FirstStepsState();
}

class _FirstStepsState extends State<FirstSteps> {
  int _step = Step.helloWorld;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => _step++),
      child: Container(
        padding: const EdgeInsets.all(32),
        color: const Color(0xFF263238),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IntrinsicWidth(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _main(),
                  _my_app(),
                ],
              ),
            ),
            const SizedBox(width: 64),
            _output(),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget _main() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        lines.void_main,
        AnimatedSlideVisibilityWidget(
          shouldBeVisible: _step == Step.helloWorld,
          child: lines.print_hello_world,
        ),
        AnimatedSlideVisibilityWidget(
          shouldBeVisible: _step != Step.helloWorld,
          child: lines.run_app_const_my_app,
        ),
        Text.rich(TextSpan(text: '}', style: cyan)),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Widget _my_app() {
    return AnimatedSlideVisibilityWidget(
      shouldBeVisible: _step != Step.helloWorld,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text('', style: code),
          lines.class_my_app_extends_stateless_widget,
          lines.const_my_app_key_key_super_key_key,
          const Text(''),
          lines.override,
          lines.widget_build_build_context_context,
          lines.return_material_app,
          AnimatedSlideVisibilityWidget(
            shouldBeVisible: _step == Step.helloWorldApp,
            child: lines.home_text_hello_world,
          ),
          AnimatedSlideVisibilityWidget(
            shouldBeVisible: _step == Step.helloWorldWithCenteredScaffold,
            child: lines.home_scaffold,
          ),
          AnimatedSlideVisibilityWidget(
            shouldBeVisible: _step == Step.helloWorldWithCenteredScaffold,
            child: lines.body_center,
          ),
          AnimatedSlideVisibilityWidget(
            shouldBeVisible: _step == Step.helloWorldWithCenteredScaffold,
            child: lines.child_text_hello_world,
          ),
          AnimatedSlideVisibilityWidget(
            shouldBeVisible: _step == Step.helloWorldWithCenteredScaffold,
            child: Text.rich(TextSpan(text: '        ),', style: cyan)),
          ),
          AnimatedSlideVisibilityWidget(
            shouldBeVisible: _step == Step.helloWorldWithCenteredScaffold,
            child: Text.rich(TextSpan(text: '      ),', style: cyan)),
          ),
          Text.rich(TextSpan(text: '    );', style: cyan)),
          Text.rich(TextSpan(text: '  }', style: cyan)),
          Text.rich(TextSpan(text: '}', style: cyan)),
        ],
      ),
    );
  }

  Widget _output() {
    Widget widget;
    switch (_step) {
      case Step.helloWorld:
        widget = const HelloWorld();
        break;
      case Step.helloWorldApp:
        widget = const HelloWorldApp();
        break;
      case Step.helloWorldWithCenteredScaffold:
        widget = const HelloWorldWithCenteredScaffold();
        break;
      default:
        widget = Container();
        break;
    }
    return FittedBox(
      child: Container(
        height: 1170,
        width: 540,
        color: Colors.white,
        child: widget,
      ),
    );
  }
}
