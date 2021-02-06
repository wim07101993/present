import 'package:flutter/widgets.dart';

class Temperature extends StatelessWidget {
  const Temperature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          '65',
          style: TextStyle(
            fontFamily: 'Rubik',
            fontSize: 135,
            letterSpacing: 0.75,
            color: Color(0xFF333333),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 22),
          child: Text(
            '°',
            style: TextStyle(
              fontSize: 80,
              color: Color(0xFF333333),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 32),
          child: Text(
            'Clear',
            style: TextStyle(
              fontFamily: 'Lato',
              fontSize: 24,
              color: Color(0xFF222222),
            ),
          ),
        ),
      ],
    );
  }
}
