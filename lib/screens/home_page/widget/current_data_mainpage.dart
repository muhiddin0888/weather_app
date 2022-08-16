import 'package:flutter/material.dart';

class MainWeatherDetail extends StatelessWidget {
  const MainWeatherDetail({
    super.key,
    required this.name,
    required this.date,
    required this.description,
  });
  final String name;
  final String date;
  final String description; //oneCallData.currentWeather[0].description,
//(oneCallData.currentWeatherMain.temp - 273).floor()

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
        ),
        Text(
          date.toString(),
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
        ),
        Text(
          description,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
