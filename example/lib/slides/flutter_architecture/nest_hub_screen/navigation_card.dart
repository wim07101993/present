import 'package:flutter/material.dart';

class NavigationCard extends StatelessWidget {
  const NavigationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.transparent, width: 0),
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0x33000000),
            blurRadius: 30,
            offset: Offset(10, 10),
          ),
        ],
      ),
      padding: const EdgeInsets.all(36),
      child: const Navigation(),
    );
  }
}

class Navigation extends StatelessWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 4),
        Row(children: const [
          SizedBox(width: 2),
          Icon(Icons.drive_eta_outlined),
          SizedBox(width: 10),
          Text('Commute', style: TextStyle(fontFamily: 'Lato', fontSize: 24)),
        ]),
        const SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Text(
              'Ross',
              style: TextStyle(
                fontFamily: 'Lato',
                color: Colors.black54,
                fontSize: 28,
              ),
            ),
            Text(
              '· Updated 1 min ago',
              style: TextStyle(
                fontFamily: 'Lato',
                color: Colors.black45,
                fontSize: 24,
                letterSpacing: -1,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Text.rich(TextSpan(children: [
          TextSpan(
            text: '20 min',
            style: TextStyle(color: Color(0xFF178438), fontSize: 32),
          ),
          TextSpan(text: ' to work', style: TextStyle(fontSize: 32)),
        ])),
        const Spacer(),
        Image.asset('assets/images/maps.png')
      ],
    );
  }
}
