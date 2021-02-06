import 'package:flutter/widgets.dart';

class AgendaSlide extends StatelessWidget {
  const AgendaSlide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text('- What is Flutter'),
        Text('- Flutter architecture'),
      ],
    );
  }
}
