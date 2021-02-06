import 'package:flutter/material.dart';

class Alarm extends StatelessWidget {
  const Alarm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: const [
      Icon(
        Icons.alarm,
        color: Colors.grey,
      ),
      SizedBox(width: 8),
      Text(
        '8:00 AM · Tue, Oct 9',
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 20,
          letterSpacing: 0.75,
          color: Colors.grey,
        ),
      ),
    ]);
  }
}
