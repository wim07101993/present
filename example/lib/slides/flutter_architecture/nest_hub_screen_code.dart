import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NestHubScreenCode extends StatelessWidget {
  const NestHubScreenCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Container(\n'
      '  child: Row(children: [\n'
      '    Column(children: [\n'
      '      Alarm(),\n'
      '      Temperature(),\n'
      '      SizedBox(height: 100),\n'
      '      WeatherForecast(),\n'
      '    ]), // Column\n'
      '    NavigationCard(),\n'
      '  ]), // Row\n'
      ') // Container',
      style: TextStyle(
        fontFamily: 'FiraCode',
        height: 1.6,
        color: Color(0xFF03569C),
        fontSize: 30,
      ),
    );
  }
}
