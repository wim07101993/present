import 'package:flutter/material.dart';

class WeatherForecast extends StatelessWidget {
  const WeatherForecast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: const [
      ForecastItem(day: 'TUE', high: '72', low: '56'),
      SizedBox(width: 68),
      ForecastItem(day: 'WED', high: '68', low: '54'),
      SizedBox(width: 68),
      ForecastItem(day: 'THU', high: '77', low: '55'),
    ]);
  }
}

class ForecastItem extends StatelessWidget {
  const ForecastItem({
    Key? key,
    required this.day,
    required this.high,
    required this.low,
  }) : super(key: key);

  final String day;
  final String high;
  final String low;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(day, style: const TextStyle(fontFamily: 'lato', fontSize: 16)),
        const SizedBox(height: 13),
        Container(
          height: 34,
          width: 34,
          decoration: const BoxDecoration(
            color: Color(0xFFFDD632),
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(height: 12),
        Row(children: [
          Text('$high°', style: const TextStyle(fontSize: 19)),
          const SizedBox(width: 9),
          Text(
            '$low°',
            style: const TextStyle(fontSize: 18, color: Colors.black54),
          ),
        ]),
      ],
    );
  }
}
