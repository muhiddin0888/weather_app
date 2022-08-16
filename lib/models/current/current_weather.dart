import 'package:json_annotation/json_annotation.dart';

part 'current_weather.g.dart';

// "id": 800,
// "main": "Clear",
// "description": "clear sky",
// "icon": "01d"

@JsonSerializable(explicitToJson: true)
class CurrentWeather {
  @JsonKey(defaultValue: 0, name: 'id')
  int id;

  @JsonKey(defaultValue: '', name: 'main')
  String main;

  @JsonKey(defaultValue: '', name: 'description')
  String description;

  @JsonKey(defaultValue: '', name: 'icon')
  String icon;

  CurrentWeather({
    required this.icon,
    required this.id,
    required this.description,
    required this.main,
  });

  factory CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentWeatherToJson(this);

  @override
  String toString() => '''
      id:$id,
      icon:$icon,
      description:$description,

  ''';
}
