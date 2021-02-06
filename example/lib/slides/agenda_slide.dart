import 'package:flutter/material.dart';
import 'package:present/present.dart';

class AgendaSlide extends TitleWithBulletsSlide {
  const AgendaSlide({Key? key})
      : super(
          key: key,
          title: 'Agenda',
          bullets: const [
            Text('- What is Flutter'),
            Text('- Set-up and first steps'),
          ],
        );
}
