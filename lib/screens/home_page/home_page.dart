import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/api/services/api_provider.dart';
import 'package:weather_app/models/current/weather_item.dart';
import 'package:weather_app/screens/home_page/widget/current_data_main.dart';
import 'package:weather_app/screens/home_page/widget/current_data_mainpage.dart';
import 'package:weather_app/screens/home_page/widget/current_wearher_detail.dart';
import 'package:weather_app/screens/home_page/widget/current_weather_info.dart';
import 'package:weather_app/screens/info_page/info_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  // final double lon;
  // final double lat;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController cityController = TextEditingController();
  String searchText = "Tashkent";

  @override
  void initState() {
    _update(searchText: "Tashkent");
    setState(() {});
    super.initState();
  }

  Future<void> _update({required String searchText}) async {
    ApiProvider.getCurrentWeatherByText(searchText: searchText);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Lottie.asset("assets/lottie/weather.json",
            width: double.infinity, height: double.infinity, fit: BoxFit.cover),
        FutureBuilder(
          future: ApiProvider.getCurrentWeatherByText(searchText: searchText),
          builder: (context, AsyncSnapshot<WeatherItem> snapshot) {
            if (snapshot.hasData) {
              var oneCallData = snapshot.data!;
              DateTime dateTime =
                  DateTime.fromMillisecondsSinceEpoch(oneCallData.dt * 1000);
              var date = DateFormat.MMMEd().format(dateTime);
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SearchButton(
                          searchText: () {
                            searchText = cityController.text;
                            setState(() {});
                            Navigator.pop(context);
                          },
                          cityController1: cityController,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return InfoPage(
                                    lat: oneCallData.coordData.lat,
                                    lon: oneCallData.coordData.lon);
                              }));
                            },
                            child: const Text("More")),
                      ],
                    ),
                    MainWeatherDetail(
                      name: oneCallData.name,
                      date: date.toString(),
                      description: oneCallData.currentWeather[0].description,
                    ),
                    Row(
                      children: [
                        MainWeatherDetailHome(
                          description:
                              oneCallData.currentWeather[0].description,
                          icon: oneCallData.currentWeather[0].icon,
                          temp: (oneCallData.currentWeatherMain.temp - 273)
                              .floor()
                              .toString(),
                        ),
                      ],
                    ),
                    const Expanded(flex: 5, child: SizedBox()),
                    Expanded(
                        flex: 10,
                        child: InfoCurrentWeather(
                            title1: "Pressure",
                            title2: "Humidity",
                            title3: "Visibility",
                            title4: "Speed",
                            title5: "Degre",
                            title6: "Gust",
                            title7: "Clouds",
                            title8: "temp_min",
                            title9: "temp_max",
                            subtitle1: oneCallData.currentWeatherMain.pressure
                                .toString(),
                            subtitle2:
                                "${oneCallData.currentWeatherMain.humidity.toString()} %",
                            subtitle3: "${oneCallData.visibility.toString()} m",
                            subtitle4:
                                "${oneCallData.currentWeatherWind.speed.toString()} m",
                            subtitle5:
                                oneCallData.currentWeatherWind.deg.toString(),
                            subtitle6:
                                oneCallData.currentWeatherWind.gust.toString(),
                            subtitle7:
                                oneCallData.currentWeatherCloud.all.toString(),
                            subtitle8:
                                "${oneCallData.currentWeatherMain.tempMin.toString()} F",
                            subtitle9:
                                "${oneCallData.currentWeatherMain.tempMax.toString()} F")),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
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
      ]),
    );
  }
}
