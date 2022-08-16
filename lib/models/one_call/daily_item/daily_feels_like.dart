import 'package:json_annotation/json_annotation.dart';

part 'daily_feels_like.g.dart';

// "day": 33.96,
// "night": 27.45,
// "eve": 33.44,
// "morn": 24.76

@JsonSerializable(explicitToJson: true)
class DailyFeelsLike {
  @JsonKey(defaultValue: 0.0, name: 'day')
  double day;
  @JsonKey(defaultValue: 0.0, name: 'night')
  double night;
  @JsonKey(defaultValue: 0.0, name: 'eve')
  double eve;
  @JsonKey(defaultValue: 0.0, name: 'morn')
  double morn;

  DailyFeelsLike({
    required this.day,
    required this.eve,
    required this.morn,
    required this.night,
  });

  factory DailyFeelsLike.fromJson(Map<String, dynamic> json) =>
      _$DailyFeelsLikeFromJson(json);

  Map<String, dynamic> toJson() => _$DailyFeelsLikeToJson(this);

  @override
  String toString() => '''
    day:$day
    eve:$eve
    morning:$morn
    night:$night

  ''';
}
