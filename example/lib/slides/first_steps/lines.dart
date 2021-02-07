import 'package:flutter/material.dart';

import 'text_styles.dart';

// ignore: non_constant_identifier_names
final _hello_world = TextSpan(text: "'Hello world!'", style: green);
// ignore: non_constant_identifier_names
final _key_key = TextSpan(children: [
  TextSpan(text: 'Key', style: yellow),
  TextSpan(text: ' key', style: orange),
]);
// ignore: non_constant_identifier_names
final _super_key_key = TextSpan(children: [
  TextSpan(text: '}) : ', style: cyan),
  TextSpan(text: 'super', style: purple),
  TextSpan(text: '(', style: cyan),
  TextSpan(text: 'key', style: orange),
  TextSpan(text: ': ', style: cyan),
  TextSpan(text: 'key', style: orange),
  TextSpan(text: ');', style: cyan),
]);

// ignore: non_constant_identifier_names
Widget end_center([int indent = 0]) {
  return Text.rich(TextSpan(children: [
    createIndent(indent),
    TextSpan(text: ');', style: cyan),
    TextSpan(text: ' // Center', style: paleBlue),
  ]));
}

// ignore: non_constant_identifier_names
Widget end_column([int indent = 0]) {
  return Text.rich(TextSpan(children: [
    createIndent(indent),
    TextSpan(text: ');', style: cyan),
    TextSpan(text: ' // Column', style: paleBlue),
  ]));
}

// ignore: non_constant_identifier_names
Widget end_floating_action_button([int indent = 0]) {
  return Text.rich(TextSpan(children: [
    createIndent(indent),
    TextSpan(text: ');', style: cyan),
    TextSpan(text: ' // FloatingActionButton', style: paleBlue),
  ]));
}

// ignore: non_constant_identifier_names
Widget end_material_app([int indent = 0]) {
  return Text.rich(TextSpan(children: [
    createIndent(indent),
    TextSpan(text: ');', style: cyan),
    TextSpan(text: ' // MaterialApp', style: paleBlue),
  ]));
}

// ignore: non_constant_identifier_names
Widget end_scaffold([int indent = 0]) {
  return Text.rich(TextSpan(children: [
    createIndent(indent),
    TextSpan(text: ');', style: cyan),
    TextSpan(text: ' // Scaffold', style: paleBlue),
  ]));
}

// ignore: non_constant_identifier_names
Widget app_bar_app_barr_title_text_flutter_demo_home_page([int indent = 0]) {
  return Text.rich(TextSpan(children: [
    createIndent(indent),
    TextSpan(text: 'appBar', style: orange),
    TextSpan(text: ':', style: cyan),
    TextSpan(text: ' AppBar', style: blue),
    TextSpan(text: '(', style: cyan),
    TextSpan(text: 'title', style: orange),
    TextSpan(text: ':', style: cyan),
    TextSpan(text: ' Text', style: blue),
    TextSpan(text: '(', style: cyan),
    TextSpan(text: "'Flutter Demo Home Page'", style: green),
    TextSpan(text: ')),', style: cyan),
  ]));
}

// ignore: non_constant_identifier_names
Widget body_center([int indent = 0]) {
  return Text.rich(TextSpan(children: [
    createIndent(indent),
    TextSpan(text: 'body', style: orange),
    TextSpan(text: ':', style: cyan),
    TextSpan(text: ' Center', style: blue),
    TextSpan(text: '(', style: cyan),
  ]));
}

// ignore: non_constant_identifier_names
Widget body_center_child_text_hello_world([int indent = 0]) {
  return Text.rich(TextSpan(children: [
    createIndent(indent),
    TextSpan(text: 'body', style: orange),
    TextSpan(text: ':', style: cyan),
    TextSpan(text: ' Center', style: blue),
    TextSpan(text: '(', style: cyan),
    TextSpan(text: 'child', style: orange),
    TextSpan(text: ':', style: cyan),
    TextSpan(text: ' Text', style: blue),
    TextSpan(text: '(', style: cyan),
    _hello_world,
    TextSpan(text: ')),', style: cyan),
  ]));
}

// ignore: non_constant_identifier_names
Widget child_column([int indent = 0]) {
  return Text.rich(TextSpan(children: [
    createIndent(indent),
    TextSpan(text: 'child', style: orange),
    TextSpan(text: ':', style: cyan),
    TextSpan(text: ' Column', style: blue),
    TextSpan(text: '(', style: cyan),
  ]));
}

// ignore: non_constant_identifier_names
Widget child_icon_icons_add([int indent = 0]) {
  return Text.rich(TextSpan(children: [
    createIndent(indent),
    TextSpan(text: 'child', style: orange),
    TextSpan(text: ':', style: cyan),
    TextSpan(text: ' Icon', style: blue),
    TextSpan(text: '(', style: cyan),
    TextSpan(text: 'Icons', style: yellow),
    TextSpan(text: '.', style: cyan),
    TextSpan(text: 'add', style: white),
    TextSpan(text: ')', style: cyan),
  ]));
}

Widget children([int indent = 0]) {
  return Text.rich(TextSpan(children: [
    createIndent(indent),
    TextSpan(text: 'children', style: orange),
    TextSpan(text: ': [', style: cyan),
  ]));
}

// ignore: non_constant_identifier_names
Widget class_my_home_page_extends_stateful_widget([int indent = 0]) {
  return Text.rich(TextSpan(children: [
    createIndent(indent),
    TextSpan(text: 'class', style: purple),
    TextSpan(text: ' MyHomePage', style: yellow),
    TextSpan(text: ' extends', style: purple),
    TextSpan(text: ' StatefulWidget', style: yellow),
    TextSpan(text: ' {', style: cyan),
  ]));
}

// ignore: non_constant_identifier_names
Widget class_my_home_page_state_extends_state_my_home_page([int indent = 0]) {
  return Text.rich(TextSpan(children: [
    createIndent(indent),
    TextSpan(text: 'class', style: purple),
    TextSpan(text: ' _MyHomePageState', style: yellow),
    TextSpan(text: ' extends', style: purple),
    TextSpan(text: ' State', style: yellow),
    TextSpan(text: ' <', style: cyan),
    TextSpan(text: 'MyHomePage', style: yellow),
    TextSpan(text: ' > {', style: cyan),
  ]));
}

// ignore: non_constant_identifier_names
Widget class_my_app_extends_stateless_widget([int indent = 0]) {
  return Text.rich(TextSpan(children: [
    createIndent(indent),
    TextSpan(text: 'class', style: purple),
    TextSpan(text: ' MyApp', style: yellow),
    TextSpan(text: ' extends', style: purple),
    TextSpan(text: ' StatelessWidget', style: yellow),
    TextSpan(text: ' {', style: cyan),
  ]));
}

// ignore: non_constant_identifier_names
Widget const_my_app_key_key_super_key_key([int indent = 0]) {
  return Text.rich(TextSpan(children: [
    createIndent(indent),
    TextSpan(text: 'const', style: purple),
    TextSpan(text: ' MyApp', style: yellow),
    TextSpan(text: '({', style: cyan),
    _key_key,
    _super_key_key,
  ]));
}

// ignore: non_constant_identifier_names
Widget const_my_home_page_key_key_this_title_super_key_key([int indent = 0]) {
  return Text.rich(TextSpan(children: [
    createIndent(indent),
    TextSpan(text: 'const', style: purple),
    TextSpan(text: ' MyHomePage', style: yellow),
    TextSpan(text: '({', style: cyan),
    _key_key,
    TextSpan(text: ',', style: cyan),
    TextSpan(text: ' this', style: purple),
    TextSpan(text: '.', style: cyan),
    TextSpan(text: 'title', style: white),
    _super_key_key,
  ]));
}

// ignore: non_constant_identifier_names
Widget final_string_title([int indent = 0]) {
  return Text.rich(TextSpan(children: [
    createIndent(indent),
    TextSpan(text: 'final', style: purple),
    TextSpan(text: ' String', style: yellow),
    TextSpan(text: 'title', style: white),
    TextSpan(text: ';', style: cyan),
  ]));
}

// ignore: non_constant_identifier_names
Widget floating_action_button_floating_action_button([int indent = 0]) {
  return Text.rich(TextSpan(children: [
    createIndent(indent),
    TextSpan(text: 'floatingActionButton', style: orange),
    TextSpan(text: ':', style: cyan),
    TextSpan(text: ' FloatingActionButton', style: blue),
    TextSpan(text: '(', style: cyan),
  ]));
}

// ignore: non_constant_identifier_names
Widget home_my_home_page_title_flutter_demo_home_page([int indent = 0]) {
  return Text.rich(TextSpan(children: [
    createIndent(indent),
    TextSpan(text: 'home', style: orange),
    TextSpan(text: ':', style: cyan),
    TextSpan(text: ' MyHomePage', style: blue),
    TextSpan(text: '(', style: cyan),
    TextSpan(text: 'title', style: orange),
    TextSpan(text: ':', style: cyan),
    TextSpan(text: "'Flutter Demo Home Page'", style: orange),
    TextSpan(text: '),', style: cyan),
  ]));
}

// ignore: non_constant_identifier_names
Widget home_scaffold([int indent = 0]) {
  return Text.rich(TextSpan(children: [
    createIndent(indent),
    TextSpan(text: 'home', style: orange),
    TextSpan(text: ':', style: cyan),
    TextSpan(text: ' Scaffold', style: blue),
    TextSpan(text: '(', style: cyan),
  ]));
}

// ignore: non_constant_identifier_names
Widget home_text_hello_world([int indent = 0]) => Text.rich(TextSpan(children: [
      createIndent(indent),
      TextSpan(text: 'home', style: orange),
      TextSpan(text: ':', style: cyan),
      TextSpan(text: ' Text', style: blue),
      TextSpan(text: '(', style: cyan),
      _hello_world,
      TextSpan(text: '),', style: cyan),
    ]));

// ignore: non_constant_identifier_names
Widget import_material_dart([int indent = 0]) => Text.rich(TextSpan(children: [
      createIndent(indent),
      TextSpan(text: 'import', style: purple),
      TextSpan(text: ' ', style: cyan),
      TextSpan(text: "'package:flutter/material.dart'", style: green),
      TextSpan(text: ';', style: cyan),
    ]));

// ignore: non_constant_identifier_names
Widget int_counter_0([int indent = 0]) {
  return Text.rich(TextSpan(children: [
    createIndent(indent),
    TextSpan(text: 'int', style: yellow),
    TextSpan(text: ' _counter', style: white),
    TextSpan(text: ' =', style: cyan),
    TextSpan(text: ' 0', style: orange),
    TextSpan(text: ';', style: cyan),
  ]));
}

// ignore: non_constant_identifier_names
Widget main_axis_alignment_main_axis_alignment_center([int indent = 0]) {
  return Text.rich(TextSpan(children: [
    createIndent(indent),
    TextSpan(text: 'mainAxisAlignment', style: orange),
    TextSpan(text: ':', style: cyan),
    TextSpan(text: ' MainAxisAlignment', style: yellow),
    TextSpan(text: '.', style: cyan),
    TextSpan(text: 'center', style: white),
    TextSpan(text: ',', style: cyan),
  ]));
}

// ignore: non_constant_identifier_names
Widget my_home_page_state_create_state_my_home_page_state([int indent = 0]) {
  return Text.rich(TextSpan(children: [
    createIndent(indent),
    TextSpan(text: '_MyHomePageState', style: yellow),
    TextSpan(text: ' createState', style: blue),
    TextSpan(text: '() =>', style: cyan),
    TextSpan(text: '_MyHomePageState', style: blue),
    TextSpan(text: '();', style: cyan),
  ]));
}

// ignore: non_constant_identifier_names
Widget on_pressed_increment_counter([int indent = 0]) {
  return Text.rich(TextSpan(children: [
    createIndent(indent),
    TextSpan(text: 'onPressed', style: orange),
    TextSpan(text: ':', style: cyan),
    TextSpan(text: ' _incrementCounter', style: blue),
    TextSpan(text: ',', style: cyan),
  ]));
}

Widget override([int indent = 0]) {
  return Text.rich(TextSpan(children: [
    createIndent(indent),
    TextSpan(text: '@', style: cyan),
    TextSpan(text: 'override', style: white),
  ]));
}

// ignore: non_constant_identifier_names
Widget print_hello_world([int indent = 0]) {
  return Text.rich(TextSpan(children: [
    createIndent(indent),
    TextSpan(text: 'print', style: blue),
    TextSpan(text: '(', style: cyan),
    _hello_world,
    TextSpan(text: ');', style: cyan),
  ]));
}

// ignore: non_constant_identifier_names
Widget return_material_app([int indent = 0]) {
  return Text.rich(TextSpan(children: [
    createIndent(indent),
    TextSpan(text: 'return', style: purple),
    TextSpan(text: ' MaterialApp', style: blue),
    TextSpan(text: '(', style: cyan),
  ]));
}

// ignore: non_constant_identifier_names
Widget return_scaffold([int indent = 0]) {
  return Text.rich(TextSpan(children: [
    createIndent(indent),
    TextSpan(text: 'return', style: purple),
    TextSpan(text: ' Scaffold', style: blue),
    TextSpan(text: '(', style: cyan),
  ]));
}

// ignore: non_constant_identifier_names
Widget run_app_my_app([int indent = 0]) {
  return Text.rich(TextSpan(children: [
    createIndent(indent),
    TextSpan(text: 'runApp', style: blue),
    TextSpan(text: '(', style: cyan),
    TextSpan(text: 'MyApp', style: blue),
    TextSpan(text: '());', style: cyan),
  ]));
}

// ignore: non_constant_identifier_names
Future<Widget> void_increment_counter_set_state_counter(
        [int indent = 0]) async =>
    Text.rich(TextSpan(children: [
      createIndent(indent),
      TextSpan(text: 'void', style: purple),
      TextSpan(text: ' _incrementCounter', style: blue),
      TextSpan(text: '() =>', style: cyan),
      TextSpan(text: ' setState', style: blue),
      TextSpan(text: '(() =>', style: cyan),
      TextSpan(text: ' _counter', style: white),
      TextSpan(text: '++);', style: cyan),
    ]));

// ignore: non_constant_identifier_names
Widget void_main([int indent = 0]) {
  return Text.rich(TextSpan(children: [
    createIndent(indent),
    TextSpan(text: 'void', style: purple),
    TextSpan(text: ' main', style: blue),
    TextSpan(text: '() {', style: cyan),
  ]));
}

// ignore: non_constant_identifier_names
Widget widget_build_build_context_context([int indent = 0]) {
  return Text.rich(TextSpan(children: [
    createIndent(indent),
    TextSpan(text: 'Widget', style: yellow),
    TextSpan(text: ' build', style: blue),
    TextSpan(text: '(', style: cyan),
    TextSpan(text: 'BuildContext', style: yellow),
    TextSpan(text: ' context', style: orange),
    TextSpan(text: ') {', style: cyan),
  ]));
}

// ignore: non_constant_identifier_names
Widget title_flutter_demo([int indent = 0]) {
  return Text.rich(TextSpan(children: [
    createIndent(indent),
    TextSpan(text: 'title', style: orange),
    TextSpan(text: ':', style: cyan),
    TextSpan(text: "'Flutter Demo'", style: green),
    TextSpan(text: ',', style: cyan),
  ]));
}

// ignore: non_constant_identifier_names
Widget text_you_have_pushed_the_button_this_many_times([int indent = 0]) {
  return Text.rich(TextSpan(children: [
    createIndent(indent),
    TextSpan(text: 'Text', style: blue),
    TextSpan(text: '(', style: cyan),
    TextSpan(
      text: "'You have pushed the button this many times:'",
      style: green,
    ),
    TextSpan(text: '),', style: cyan),
  ]));
}

// ignore: non_constant_identifier_names
Widget text_counter_style_theme_of_context_text_theme_headline_4([
  int indent = 0,
]) {
  return Text.rich(TextSpan(children: [
    createIndent(indent),
    TextSpan(text: 'Text', style: blue),
    TextSpan(text: '(', style: cyan),
    TextSpan(text: "'", style: green),
    TextSpan(text: '\$', style: cyan),
    TextSpan(text: '_counter', style: white),
    TextSpan(text: "'", style: green),
    TextSpan(text: ',', style: cyan),
    TextSpan(text: 'style', style: orange),
    TextSpan(text: ':', style: cyan),
    TextSpan(text: 'Theme', style: yellow),
    TextSpan(text: '.', style: cyan),
    TextSpan(text: 'of', style: blue),
    TextSpan(text: '(', style: cyan),
    TextSpan(text: 'context', style: orange),
    TextSpan(text: ').', style: cyan),
    TextSpan(text: 'textTheme', style: white),
    TextSpan(text: '.', style: cyan),
    TextSpan(text: 'headline4', style: white),
    TextSpan(text: '),', style: cyan),
  ]));
}

TextSpan createIndent([int indent = 0]) {
  final buffer = StringBuffer();
  for (var i = 0; i < indent; i++) {
    buffer.write('   ');
  }
  return TextSpan(text: buffer.toString());
}
