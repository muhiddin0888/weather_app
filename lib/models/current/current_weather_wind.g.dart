// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather_wind.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentWeatherWind _$CurrentWeatherWindFromJson(Map<String, dynamic> json) =>
    CurrentWeatherWind(
      speed: (json['speed'] as num?)?.toDouble() ?? 0.0,
      deg: json['deg'] as int? ?? 0,
      gust: (json['gust'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$CurrentWeatherWindToJson(CurrentWeatherWind instance) =>
    <String, dynamic>{
      'speed': instance.speed,
      'deg': instance.deg,
      'gust': instance.gust,
    };
