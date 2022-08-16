import 'package:flutter/material.dart';

class MainWeatherDetailHome extends StatelessWidget {
  const MainWeatherDetailHome({
    super.key,
    required this.description,
    required this.icon,
    required this.temp,
  });
  final String icon;
  final String temp;
  final String description; //oneCallData.currentWeather[0].description,
//(oneCallData.currentWeatherMain.temp - 273).floor()

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          "http://openweathermap.org/img/wn/$icon@2x.png",
          width: 200,
          height: 200,
          fit: BoxFit.cover,
        ),
        SizedBox(
          width: 100,
          height: 100,
          child: Stack(
            children: [
              const Positioned(
                  left: 60,
                  child: Text(
                    "C",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  )),
              Positioned(
                  left: 0,
                  top: 50,
                  child: Text(
                    description,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  )),
              Text(
                temp,
                style:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
