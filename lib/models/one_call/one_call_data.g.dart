// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'one_call_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OneCallDataWeather _$OneCallDataWeatherFromJson(Map<String, dynamic> json) =>
    OneCallDataWeather(
      lat: (json['lat'] as num?)?.toDouble() ?? 0.0,
      lon: (json['lon'] as num?)?.toDouble() ?? 0.0,
      timezone: json['timezone'] as String? ?? '',
      timezoneOffset: json['timezone_offset'] as int? ?? 0,
      dailyItem: (json['daily'] as List<dynamic>?)
              ?.map((e) => DailyItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      hourlyItem: (json['hourly'] as List<dynamic>?)
              ?.map((e) => HourlyItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$OneCallDataWeatherToJson(OneCallDataWeather instance) =>
    <String, dynamic>{
      'timezone_offset': instance.timezoneOffset,
      'timezone': instance.timezone,
      'lon': instance.lon,
      'lat': instance.lat,
      'hourly': instance.hourlyItem,
      'daily': instance.dailyItem,
    };
