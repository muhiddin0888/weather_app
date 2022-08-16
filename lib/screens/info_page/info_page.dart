import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/api/services/api_provider.dart';
import 'package:weather_app/models/one_call/one_call_data.dart';
import 'package:weather_app/screens/info_page/widgets/daily_data_info.dart';
import 'package:weather_app/screens/info_page/widgets/hourly_data_item.dart';
import 'package:weather_app/screens/info_page/widgets/hourly_time.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key, required this.lat, required this.lon});
  final double lat;
  final double lon;

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  TextEditingController cityController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color(0xFF2FCEE1),
        elevation: 0,
        title:const Text("7 days Weather info"),
      ),
      body: FutureBuilder(
        future: ApiProvider.getOneCallByLatLong(
            latitude: widget.lat, longitude: widget.lon),
        builder: (context, AsyncSnapshot<OneCallDataWeather> snapshot) {
          if (snapshot.hasData) {
            var data = snapshot.data!;
            return SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Stack(children: [
                Lottie.asset("assets/lottie/weather.json",
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover),
                Column(
                  children: [
                    HourlyTime(
                      time: data.hourlyItem[0].dt,
                    ),
                    SizedBox(
                      height: 230,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: List.generate(
                          data.hourlyItem.length,
                          (index) => Column(
                            children: [
                              const SizedBox(
                                height: 30,
                              ),
                              HourlyData(
                                icon: data
                                    .hourlyItem[index].currentWeather[0].icon,
                                temp: data.hourlyItem[index].temp
                                    .floor()
                                    .toString(),
                                time: data.hourlyItem[index].dt,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      "Next 7 days",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Expanded(
                      child: ListView(
                        children: List.generate(
                          data.dailyItem.length,
                          (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                padding:const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color:
                                      const Color.fromARGB(120, 255, 255, 255),
                                ),
                                child: DailyInfo(
                                    temp: data.dailyItem[index].dailyTemp.day
                                        .floor()
                                        .toString(),
                                    icon: data.dailyItem[index]
                                        .currentWeather[0].icon,
                                    time: data.dailyItem[index].dt)),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ]),
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text("Error"),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
