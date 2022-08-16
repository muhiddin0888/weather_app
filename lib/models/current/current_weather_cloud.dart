import 'package:json_annotation/json_annotation.dart';

part 'current_weather_cloud.g.dart';

// "all": 4

@JsonSerializable(explicitToJson: true)
class CurrentWeatherCloud {
  @JsonKey(defaultValue: 0, name: 'all')
  int all;

  CurrentWeatherCloud({
    required this.all,
  });

  factory CurrentWeatherCloud.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherCloudFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentWeatherCloudToJson(this);

  @override
  String toString() => '''
      all:$all,

  ''';
}
