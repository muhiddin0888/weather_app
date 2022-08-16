// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskData _$TaskDataFromJson(Map<String, dynamic> json) => TaskData(
      capital: json['capital'] as String? ?? '',
      countryName: json['country_name'] as String? ?? '',
      countryCode: json['country_code'] as String? ?? '',
      flagImage: json['flag_image'] as String? ?? '',
      populationCount: json['population_count'] as String? ?? '',
      regioonsCount: json['regioons_count'] as int? ?? 0,
    );

Map<String, dynamic> _$TaskDataToJson(TaskData instance) => <String, dynamic>{
      'country_name': instance.countryName,
      'country_code': instance.countryCode,
      'capital': instance.capital,
      'regioons_count': instance.regioonsCount,
      'population_count': instance.populationCount,
      'flag_image': instance.flagImage,
    };
