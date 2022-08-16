import 'package:json_annotation/json_annotation.dart';

part 'daily_temp.g.dart';

// "day": 36.26,
// "min": 25.4,
// "max": 36.55,
// "night": 28.77,
// "eve": 35.57,
// "morn": 25.41

@JsonSerializable(explicitToJson: true)
class DailyTemp {
  @JsonKey(defaultValue: 0.0, name: 'day')
  double day;
  @JsonKey(defaultValue: 0.0, name: 'min')
  double min;
  @JsonKey(defaultValue: 0.0, name: 'max')
  double max;
  @JsonKey(defaultValue: 0.0, name: 'night')
  double night;
  @JsonKey(defaultValue: 0.0, name: 'eve')
  double eve;
  @JsonKey(defaultValue: 0.0, name: 'morn')
  double morn;

  DailyTemp({
    required this.day,
    required this.eve,
    required this.max,
    required this.min,
    required this.morn,
    required this.night,
  });

  factory DailyTemp.fromJson(Map<String, dynamic> json) =>
      _$DailyTempFromJson(json);

  Map<String, dynamic> toJson() => _$DailyTempToJson(this);

  @override
  String toString() => '''
    day:$day
    eve:$eve
    max:$max
    morning:$morn
    night:$night

  ''';
}
