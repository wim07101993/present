import 'package:flutter/material.dart';

import 'text_styles.dart';

// ignore: non_constant_identifier_names
final void_main = Text.rich(TextSpan(children: [
  TextSpan(text: 'void', style: purple),
  TextSpan(text: ' main', style: blue),
  TextSpan(text: '() {', style: cyan),
]));

// ignore: non_constant_identifier_names
final print_hello_world = Text.rich(TextSpan(children: [
  TextSpan(text: '  print', style: blue),
  TextSpan(text: '(', style: cyan),
  TextSpan(text: "'Hello world!'", style: green),
  TextSpan(text: ');', style: cyan),
]));

// ignore: non_constant_identifier_names
final run_app_const_my_app = Text.rich(TextSpan(children: [
  TextSpan(text: '  runApp', style: blue),
  TextSpan(text: '(', style: cyan),
  TextSpan(text: 'const ', style: purple),
  TextSpan(text: 'MyApp', style: blue),
  TextSpan(text: '());', style: cyan),
]));

// ignore: non_constant_identifier_names
final class_my_app_extends_stateless_widget = Text.rich(TextSpan(children: [
  TextSpan(text: 'class', style: purple),
  TextSpan(text: ' MyApp ', style: yellow),
  TextSpan(text: 'extends', style: purple),
  TextSpan(text: '() {', style: cyan),
]));

// ignore: non_constant_identifier_names
final const_my_app_key_key_super_key_key = Text.rich(TextSpan(children: [
  TextSpan(text: '  const', style: purple),
  TextSpan(text: ' MyApp', style: yellow),
  TextSpan(text: '({', style: cyan),
  TextSpan(text: 'Key', style: yellow),
  TextSpan(text: '?', style: cyan),
  TextSpan(text: ' key', style: orange),
  TextSpan(text: '}) : ', style: cyan),
  TextSpan(text: 'super', style: purple),
  TextSpan(text: '(', style: cyan),
  TextSpan(text: 'key', style: orange),
  TextSpan(text: ': ', style: cyan),
  TextSpan(text: 'key', style: orange),
  TextSpan(text: ');', style: cyan),
]));

final override = Text.rich(TextSpan(children: [
  TextSpan(text: '  @', style: cyan),
  TextSpan(text: 'override', style: white),
]));

// ignore: non_constant_identifier_names
final widget_build_build_context_context = Text.rich(TextSpan(children: [
  TextSpan(text: '  Widget', style: yellow),
  TextSpan(text: ' build', style: blue),
  TextSpan(text: '(', style: cyan),
  TextSpan(text: 'BuildContext', style: yellow),
  TextSpan(text: ' context', style: orange),
  TextSpan(text: ') {', style: cyan),
]));

// ignore: non_constant_identifier_names
final return_material_app = Text.rich(TextSpan(children: [
  TextSpan(text: '    return', style: purple),
  TextSpan(text: ' const', style: purple),
  TextSpan(text: ' MaterialApp', style: yellow),
  TextSpan(text: '(', style: cyan),
]));

// ignore: non_constant_identifier_names
final home_text_hello_world = Text.rich(TextSpan(children: [
  TextSpan(text: '      home', style: purple),
  TextSpan(text: ':', style: cyan),
  TextSpan(text: ' Text', style: blue),
  TextSpan(text: '(', style: cyan),
  TextSpan(text: "'Hello world!'", style: green),
  TextSpan(text: '),', style: cyan),
]));

// ignore: non_constant_identifier_names
final home_scaffold = Text.rich(TextSpan(children: [
  TextSpan(text: '      home', style: purple),
  TextSpan(text: ':', style: cyan),
  TextSpan(text: ' Scaffold', style: blue),
  TextSpan(text: '(', style: cyan),
]));

// ignore: non_constant_identifier_names
final body_center = Text.rich(TextSpan(children: [
  TextSpan(text: '        body', style: purple),
  TextSpan(text: ':', style: cyan),
  TextSpan(text: ' Center', style: blue),
  TextSpan(text: '(', style: cyan),
]));

// ignore: non_constant_identifier_names
final child_text_hello_world = Text.rich(TextSpan(children: [
  TextSpan(text: '          child', style: purple),
  TextSpan(text: ':', style: cyan),
  TextSpan(text: ' Text', style: blue),
  TextSpan(text: '(', style: cyan),
  TextSpan(text: "'Hello world!'", style: green),
  TextSpan(text: '),', style: cyan),
]));
