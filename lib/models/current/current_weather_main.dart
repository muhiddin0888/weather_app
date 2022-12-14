import 'package:json_annotation/json_annotation.dart';

part 'current_weather_main.g.dart';

// "temp": 309.97,
// "feels_like": 307.47,
// "temp_min": 309.97,
// "temp_max": 309.97,
// "pressure": 1003,
// "humidity": 14,
// "sea_level": 1003,
// "grnd_level": 957

@JsonSerializable(explicitToJson: true)
class CurrentWeatherMain {
  @JsonKey(defaultValue: 0.0, name: 'temp')
  double temp;

  @JsonKey(defaultValue: 0.0, name: 'feels_like')
  double feelsLike;

  @JsonKey(defaultValue: 0.0, name: 'temp_min')
  double tempMin;

  @JsonKey(defaultValue: 0.0, name: 'temp_max')
  double tempMax;

  @JsonKey(defaultValue: 0, name: 'pressure')
  int pressure;
  @JsonKey(defaultValue: 0, name: 'humidity')
  int humidity;
  @JsonKey(defaultValue: 0, name: 'sea_level')
  int seaLevel;
  @JsonKey(defaultValue: 0, name: 'grnd_level')
  int grndLevel;

  CurrentWeatherMain({
    required this.feelsLike,
    required this.grndLevel,
    required this.humidity,
    required this.pressure,
    required this.seaLevel,
    required this.temp,
    required this.tempMax,
    required this.tempMin,
  });

  factory CurrentWeatherMain.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherMainFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentWeatherMainToJson(this);

  @override
  String toString() => '''
      temp:$temp,
      tempMax:$tempMax,
      humidity:$humidity,
      seaLevel:$seaLevel,
      grndLevel:$grndLevel,
      feelsLike:$feelsLike,
  ''';
}
