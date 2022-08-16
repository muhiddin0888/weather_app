import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/models/current/current_weather.dart';

part 'hourly_item.g.dart';

// "dt": 1659952800,
// "temp": 36.14,
// "feels_like": 34.07,
// "pressure": 1005,
// "humidity": 18,
// "dew_point": 8.08,
// "uvi": 5.18,
// "clouds": 1,
// "visibility": 10000,
// "wind_speed": 7.23,
// "wind_deg": 267,
// "wind_gust": 7.44,
// "weather": [
//     {
//         "id": 800,
//         "main": "Clear",
//         "description": "clear sky",
//         "icon": "01d"
//     }
// ],
// "pop": 0

@JsonSerializable(explicitToJson: true)
class HourlyItem {
  @JsonKey(defaultValue: 0, name: 'dt')
  int dt;

  @JsonKey(defaultValue: 0.0, name: 'temp')
  double temp;

  @JsonKey(defaultValue: 0.0, name: 'feels_like')
  double feelsLike;

  @JsonKey(defaultValue: 0, name: 'pressure')
  double pressure;

  @JsonKey(defaultValue: 0, name: 'temhumidityp')
  double humidity;

  @JsonKey(defaultValue: 0.0, name: 'dew_point')
  double dewPointtemp;

  @JsonKey(defaultValue: 0.0, name: 'uvi')
  double uvi;

  @JsonKey(defaultValue: 0, name: 'clouds')
  int clouds;

  @JsonKey(defaultValue: 0, name: 'visibility')
  int visibility;

  @JsonKey(defaultValue: 0.0, name: 'wind_speed')
  double windSpeed;

  @JsonKey(defaultValue: 0, name: 'wind_deg')
  double windDeg;

  @JsonKey(defaultValue: 0, name: 'wind_gust')
  double windGust;

  @JsonKey(defaultValue: 0, name: 'pop')
  double pop;

  @JsonKey(defaultValue: [], name: 'weather')
  List<CurrentWeather> currentWeather;

  HourlyItem({
    required this.clouds,
    required this.currentWeather,
    required this.dewPointtemp,
    required this.dt,
    required this.feelsLike,
    required this.humidity,
    required this.pop,
    required this.pressure,
    required this.temp,
    required this.uvi,
    required this.visibility,
    required this.windDeg,
    required this.windGust,
    required this.windSpeed,
  });

  factory HourlyItem.fromJson(Map<String, dynamic> json) =>
      _$HourlyItemFromJson(json);

  Map<String, dynamic> toJson() => _$HourlyItemToJson(this);

  @override
  String toString() => '''
      temp:$temp,
      humidity:$humidity,
      feelsLike:$feelsLike,

  ''';
}
