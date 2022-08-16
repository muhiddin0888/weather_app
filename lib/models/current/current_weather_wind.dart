import 'package:json_annotation/json_annotation.dart';

part 'current_weather_wind.g.dart';

// "speed": 7.23,
// "deg": 267,
// "gust": 7.44

@JsonSerializable(explicitToJson: true)
class CurrentWeatherWind {
  @JsonKey(defaultValue: 0.0, name: 'speed')
  double speed;

  @JsonKey(defaultValue: 0, name: 'deg')
  int deg;

  @JsonKey(defaultValue: 0.0, name: 'gust')
  double gust;

  CurrentWeatherWind({
    required this.speed,
    required this.deg,
    required this.gust,
  });

  factory CurrentWeatherWind.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherWindFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentWeatherWindToJson(this);

  @override
  String toString() => '''
      speed:$speed,
      deg:$deg,
      gust:$gust,
  ''';
}
