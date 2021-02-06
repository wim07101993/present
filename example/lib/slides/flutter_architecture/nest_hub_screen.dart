import 'package:flutter/material.dart';

import 'nest_hub_screen/alarm.dart';
import 'nest_hub_screen/navigation_card.dart';
import 'nest_hub_screen/temperature.dart';
import 'nest_hub_screen/weather_forecast.dart';

class NestHubScreen extends StatelessWidget {
  const NestHubScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topCenter,
          colors: [Color(0xFFE1F5FE), Colors.white],
          stops: [0, 0.8],
        ),
        border: Border.all(width: 2, color: Colors.black87),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.only(left: 40, top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.only(left: 13),
                child: Alarm(),
              ),
              Temperature(),
              SizedBox(height: 100),
              Padding(
                padding: EdgeInsets.only(left: 12),
                child: WeatherForecast(),
              ),
            ],
          ),
        ),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 65,
              top: 20,
              right: 50,
              bottom: 30,
            ),
            child: NavigationCard(),
          ),
        )
      ]),
    );
  }
}
