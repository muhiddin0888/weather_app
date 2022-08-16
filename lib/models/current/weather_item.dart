import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/models/current/coord_data.dart';
import 'package:weather_app/models/current/current_weather.dart';
import 'package:weather_app/models/current/current_weather_cloud.dart';
import 'package:weather_app/models/current/current_weather_main.dart';
import 'package:weather_app/models/current/current_weather_sys.dart';
import 'package:weather_app/models/current/current_weather_wind.dart';

part 'weather_item.g.dart';

// "coord": {},//
// "weather": [],//
// "base": "stations",//
// "main": { },//
// "visibility": 10000,//
// "wind": { },//
// "clouds": { },//
// "dt": 1659954163,//
// "sys": {    },//
// "timezone": 18000,//
// "id": 1512569,//
// "name": "Tashkent",//
// "cod": 200//

@JsonSerializable(explicitToJson: true)
class WeatherItem {
  @JsonKey(name: 'coord')
  CoordData coordData;

  @JsonKey(defaultValue: [], name: 'weather')
  List<CurrentWeather> currentWeather;

  @JsonKey(defaultValue: '', name: 'base')
  String base;

  @JsonKey(name: 'main')
  CurrentWeatherMain currentWeatherMain;

  @JsonKey(defaultValue: 0, name: 'visibility')
  int visibility;

  @JsonKey(name: 'wind')
  CurrentWeatherWind currentWeatherWind;

  @JsonKey(name: 'clouds')
  CurrentWeatherCloud currentWeatherCloud;

  @JsonKey(defaultValue: 0, name: 'dt')
  int dt;

  @JsonKey(name: 'sys')
  CurrentWeatherSys currentWeatherSys;

  @JsonKey(defaultValue: 0, name: 'timezone')
  int timezone;
  @JsonKey(defaultValue: 0, name: 'id')
  int id;
  @JsonKey(defaultValue: '', name: 'name')
  String name;
  @JsonKey(defaultValue: 0, name: 'cod')
  int cod;

  WeatherItem({
    required this.base,
    required this.id,
    required this.cod,
    required this.coordData,
    required this.currentWeather,
    required this.currentWeatherCloud,
    required this.currentWeatherMain,
    required this.currentWeatherSys,
    required this.currentWeatherWind,
    required this.dt,
    required this.name,
    required this.timezone,
    required this.visibility,
  });

  factory WeatherItem.fromJson(Map<String, dynamic> json) =>
      _$WeatherItemFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherItemToJson(this);

  @override
  String toString() => '''
      id:$id,
      name:$name,
      cordData:$coordData,
      currentWeather:$currentWeather,
  ''';
}
