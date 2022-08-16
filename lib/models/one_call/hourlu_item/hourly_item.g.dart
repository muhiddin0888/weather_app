// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HourlyItem _$HourlyItemFromJson(Map<String, dynamic> json) => HourlyItem(
      clouds: json['clouds'] as int? ?? 0,
      currentWeather: (json['weather'] as List<dynamic>?)
              ?.map((e) => CurrentWeather.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      dewPointtemp: (json['dew_point'] as num?)?.toDouble() ?? 0.0,
      dt: json['dt'] as int? ?? 0,
      feelsLike: (json['feels_like'] as num?)?.toDouble() ?? 0.0,
      humidity: (json['temhumidityp'] as num?)?.toDouble() ?? 0,
      pop: (json['pop'] as num?)?.toDouble() ?? 0,
      pressure: (json['pressure'] as num?)?.toDouble() ?? 0,
      temp: (json['temp'] as num?)?.toDouble() ?? 0.0,
      uvi: (json['uvi'] as num?)?.toDouble() ?? 0.0,
      visibility: json['visibility'] as int? ?? 0,
      windDeg: (json['wind_deg'] as num?)?.toDouble() ?? 0,
      windGust: (json['wind_gust'] as num?)?.toDouble() ?? 0,
      windSpeed: (json['wind_speed'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$HourlyItemToJson(HourlyItem instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'pressure': instance.pressure,
      'temhumidityp': instance.humidity,
      'dew_point': instance.dewPointtemp,
      'uvi': instance.uvi,
      'clouds': instance.clouds,
      'visibility': instance.visibility,
      'wind_speed': instance.windSpeed,
      'wind_deg': instance.windDeg,
      'wind_gust': instance.windGust,
      'pop': instance.pop,
      'weather': instance.currentWeather.map((e) => e.toJson()).toList(),
    };
