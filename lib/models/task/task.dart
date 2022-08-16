import 'package:json_annotation/json_annotation.dart';

part 'task.g.dart';

// "country_name": "Uzbekistan",
// "country_code": "UZ",
// "capital": "Tashkent",
// "regioons_count": 12,
// "population_count": "37 million",
// "flag_image": "http://tfi.uz/photos/1/photos/flag-1024x512.jpg"

@JsonSerializable()
class TaskData {
  @JsonKey(defaultValue: '', name: 'country_name')
  String countryName;
  @JsonKey(defaultValue: '', name: 'country_code')
  String countryCode;
  @JsonKey(defaultValue: '', name: 'capital')
  String capital;
  @JsonKey(defaultValue: 0, name: 'regioons_count')
  int regioonsCount;
  @JsonKey(defaultValue: '', name: 'population_count')
  String populationCount;
  @JsonKey(defaultValue: '', name: 'flag_image')
  String flagImage;

  TaskData({
    required this.capital,
    required this.countryName,
    required this.countryCode,
    required this.flagImage,
    required this.populationCount,
    required this.regioonsCount,
  });

  factory TaskData.fromJson(Map<String, dynamic> json) =>
      _$TaskDataFromJson(json);

  Map<String, dynamic> toJson() => _$TaskDataToJson(this);

  @override
  String toString() => '''


  ''';
}
