// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherItem _$WeatherItemFromJson(Map<String, dynamic> json) => WeatherItem(
      base: json['base'] as String? ?? '',
      id: json['id'] as int? ?? 0,
      cod: json['cod'] as int? ?? 0,
      coordData: CoordData.fromJson(json['coord'] as Map<String, dynamic>),
      currentWeather: (json['weather'] as List<dynamic>?)
              ?.map((e) => CurrentWeather.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      currentWeatherCloud:
          CurrentWeatherCloud.fromJson(json['clouds'] as Map<String, dynamic>),
      currentWeatherMain:
          CurrentWeatherMain.fromJson(json['main'] as Map<String, dynamic>),
      currentWeatherSys:
          CurrentWeatherSys.fromJson(json['sys'] as Map<String, dynamic>),
      currentWeatherWind:
          CurrentWeatherWind.fromJson(json['wind'] as Map<String, dynamic>),
      dt: json['dt'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      timezone: json['timezone'] as int? ?? 0,
      visibility: json['visibility'] as int? ?? 0,
    );

Map<String, dynamic> _$WeatherItemToJson(WeatherItem instance) =>
    <String, dynamic>{
      'coord': instance.coordData.toJson(),
      'weather': instance.currentWeather.map((e) => e.toJson()).toList(),
      'base': instance.base,
      'main': instance.currentWeatherMain.toJson(),
      'visibility': instance.visibility,
      'wind': instance.currentWeatherWind.toJson(),
      'clouds': instance.currentWeatherCloud.toJson(),
      'dt': instance.dt,
      'sys': instance.currentWeatherSys.toJson(),
      'timezone': instance.timezone,
      'id': instance.id,
      'name': instance.name,
      'cod': instance.cod,
    };
