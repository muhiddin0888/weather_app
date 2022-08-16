import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HourlyData extends StatelessWidget {
  const HourlyData(
      {super.key, required this.time, required this.temp, required this.icon});
  final int time;
  final String temp;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 100,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(56),
        color: const Color.fromARGB(120, 255, 255, 255),
      ),
      child: Column(children: [
        Image.network(
          "http://openweathermap.org/img/wn/$icon@2x.png",
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
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
        const SizedBox(
          height: 5,
        ),
        Text(
          DateFormat.jm()
              .format(DateTime.fromMillisecondsSinceEpoch(time * 1000))
              .toString(),
        )
      ]),
    );
  }
}
