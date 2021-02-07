import 'package:flutter/material.dart' hide Step;
import 'package:present/present.dart';

import '../first_steps.dart';
import 'lines.dart' as lines;
import 'text_styles.dart';

class Code extends StatelessWidget {
  const Code({
    Key? key,
    required this.step,
  }) : super(key: key);

  final int step;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _main(),
          _myApp(),
          _myHomePage(),
        ],
      ),
    );
  }

  Widget _main() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AnimatedSlideVisibilityWidget(
          shouldBeVisible: step >= Step.helloWorldApp,
          child: lines.import_material_dart(),
        ),
        AnimatedSlideVisibilityWidget(
          shouldBeVisible: step >= Step.helloWorldApp,
          child: const Text(''),
        ),
        lines.void_main(),
        AnimatedSlideVisibilityWidget(
          shouldBeVisible: step == Step.helloWorld,
          child: lines.print_hello_world(1),
        ),
        AnimatedSlideVisibilityWidget(
          shouldBeVisible: step != Step.helloWorld,
          child: lines.run_app_my_app(1),
        ),
        Text('}', style: cyan),
      ],
    );
  }

  Widget _myApp() {
    return AnimatedSlideVisibilityWidget(
      shouldBeVisible: step != Step.helloWorld,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text('', style: code),
          lines.class_my_app_extends_stateless_widget(),
          lines.const_my_app_key_key_super_key_key(1),
          const Text(''),
          lines.override(1),
          lines.widget_build_build_context_context(1),
          lines.return_material_app(2),
          AnimatedSlideVisibilityWidget(
            shouldBeVisible: step >= Step.withAppBar,
            child: lines.title_flutter_demo(3),
          ),
          AnimatedSlideVisibilityWidget(
            shouldBeVisible: step == Step.helloWorldApp,
            child: lines.home_text_hello_world(3),
          ),
          AnimatedSlideVisibilityWidget(
            shouldBeVisible: step >= Step.helloWorldWithCenteredScaffold &&
                step < Step.demoApp,
            child: lines.home_scaffold(3),
          ),
          AnimatedSlideVisibilityWidget(
            shouldBeVisible: step >= Step.withAppBar && step < Step.demoApp,
            child: lines.app_bar_app_barr_title_text_flutter_demo_home_page(4),
          ),
          AnimatedSlideVisibilityWidget(
            shouldBeVisible: step >= Step.helloWorldWithCenteredScaffold &&
                step < Step.demoApp,
            child: lines.body_center_child_text_hello_world(4),
          ),
          AnimatedSlideVisibilityWidget(
            shouldBeVisible: step >= Step.helloWorldWithCenteredScaffold &&
                step < Step.demoApp,
            child: lines.end_scaffold(3),
          ),
          AnimatedSlideVisibilityWidget(
            shouldBeVisible: step >= Step.demoApp,
            child: lines.home_my_home_page_title_flutter_demo_home_page(3),
          ),
          lines.end_material_app(2),
          Text('  }', style: cyan),
          Text('}', style: cyan),
        ],
      ),
    );
  }

  Widget _myHomePage() {
    return AnimatedSlideVisibilityWidget(
      shouldBeVisible: step >= Step.demoApp,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(''),
          lines.class_my_home_page_extends_stateful_widget(),
          lines.const_my_home_page_key_key_this_title_super_key_key(1),
          const Text(''),
          lines.final_string_title(1),
          const Text(''),
          lines.override(1),
          lines.widget_build_build_context_context(1),
          lines.return_scaffold(2),
          lines.body_center(3),
          lines.child_column(4),
          lines.main_axis_alignment_main_axis_alignment_center(5),
          lines.children(5),
          lines.text_you_have_pushed_the_button_this_many_times(6),
          lines.text_counter_style_theme_of_context_text_theme_headline_4(6),
          Text('          ],', style: cyan),
          lines.end_column(4),
          lines.end_center(3),
          lines.floating_action_button_floating_action_button(3),
          lines.on_pressed_increment_counter(4),
          lines.child_icon_icons_add(4),
          lines.end_floating_action_button(3),
          lines.end_scaffold(2),
          Text('  }', style: cyan),
          Text('}', style: cyan),
        ],
      ),
    );
  }
}
