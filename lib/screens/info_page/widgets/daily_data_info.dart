import 'package:flutter/material.dart';
import 'package:weather_app/screens/info_page/widgets/hourly_time.dart';

class DailyInfo extends StatelessWidget {
  const DailyInfo(
      {super.key, required this.time, required this.temp, required this.icon});
  final int time;
  final String temp; //data.dailyItem[index].dailyTemp.day.floor().toString()
  final String icon; //data.dailyItem[index].currentWeather[0].icon

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HourlyTime(
          time: time,
        ),
        const Expanded(child: SizedBox()),
        SizedBox(
          width: 38,
          child: Stack(children: [
            const Positioned(left: 28, child: Text("C")),
            Text(
              temp,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ]),
        ),
        Image.network("http://openweathermap.org/img/wn/$icon@2x.png"),
        const SizedBox(
          width: 20,
        )
      ],
    );
  }
}
