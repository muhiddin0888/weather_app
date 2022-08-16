import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/models/current/current_weather.dart';
import 'package:weather_app/models/one_call/daily_item/daily_feels_like.dart';
import 'package:weather_app/models/one_call/daily_item/daily_temp.dart';

part 'daily_item.g.dart';

// "dt": 1659942000,
// "sunrise": 1659918298,
// "sunset": 1659969164,
// "moonrise": 1659958860,
// "moonset": 1659901080,
// "moon_phase": 0.35,
// "temp": {},
// "feels_like": {},
// "pressure": 1004,
// "humidity": 16,
// "dew_point": 6.46,
// "wind_speed": 7.23,
// "wind_deg": 267,
// "wind_gust": 7.79,
// "weather": [],
// "clouds": 4,
// "pop": 0,
// "uvi": 8.38

@JsonSerializable(explicitToJson: true)
class DailyItem {
  @JsonKey(defaultValue: 0, name: 'dt')
  int dt;

  @JsonKey(defaultValue: 0, name: 'sunrise')
  int sunrise;

  @JsonKey(defaultValue: 0, name: 'sunset')
  int sunset;

  @JsonKey(defaultValue: 0, name: 'moonrise')
  int moonrise;

  @JsonKey(defaultValue: 0, name: 'moonset')
  int moonset;

  @JsonKey(defaultValue: 0.0, name: 'moon_phase')
  double moonPhase;

  @JsonKey(name: 'temp')
  DailyTemp dailyTemp;

  @JsonKey(name: 'feels_like')
  DailyFeelsLike dailyFeelsLike;

  @JsonKey(defaultValue: 0.0, name: 'pressure')
  double pressure;

  @JsonKey(defaultValue: 0.0, name: 'humidity')
  double humidity;

  @JsonKey(defaultValue: 0.0, name: 'dew_point')
  double dewPoint;

  @JsonKey(defaultValue: 0.0, name: 'wind_speed')
  double windSpeed;

  @JsonKey(defaultValue: 0.0, name: 'wind_deg')
  double windDeg;

  @JsonKey(defaultValue: 0.0, name: 'wind_gust')
  double windGust;

  @JsonKey(defaultValue: [], name: 'weather')
  List<CurrentWeather> currentWeather;

  @JsonKey(defaultValue: 0, name: 'clouds')
  int clouds;

  @JsonKey(defaultValue: 0.0, name: 'pop')
  double pop;

  @JsonKey(defaultValue: 0.0, name: 'uvi')
  double uvi;

  DailyItem({
    required this.clouds,
    required this.currentWeather,
    required this.dailyFeelsLike,
    required this.dailyTemp,
    required this.dewPoint,
    required this.dt,
    required this.humidity,
    required this.moonPhase,
    required this.moonrise,
    required this.moonset,
    required this.pop,
    required this.pressure,
    required this.sunrise,
    required this.sunset,
    required this.uvi,
    required this.windDeg,
    required this.windGust,
    required this.windSpeed,
  });

  factory DailyItem.fromJson(Map<String, dynamic> json) =>
      _$DailyItemFromJson(json);

  Map<String, dynamic> toJson() => _$DailyItemToJson(this);

  @override
  String toString() => '''
  dayily Item

  ''';
}
