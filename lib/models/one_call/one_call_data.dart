import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/models/one_call/daily_item/daily_item.dart';
import 'package:weather_app/models/one_call/hourlu_item/hourly_item.dart';

part 'one_call_data.g.dart';

// "lat": 41.2646,
// "lon": 69.2163,
// "timezone": "Asia/Tashkent",
// "timezone_offset": 18000,

@JsonSerializable()
class OneCallDataWeather {
  @JsonKey(defaultValue: 0, name: 'timezone_offset')
  int timezoneOffset;

  @JsonKey(defaultValue: '', name: 'timezone')
  String timezone;

  @JsonKey(defaultValue: 0.0, name: 'lon')
  double lon;

  @JsonKey(defaultValue: 0.0, name: 'lat')
  double lat;

  @JsonKey(defaultValue: [], name: 'hourly')
  List<HourlyItem> hourlyItem;

  @JsonKey(defaultValue: [], name: 'daily')
  List<DailyItem> dailyItem;

  OneCallDataWeather({
    required this.lat,
    required this.lon,
    required this.timezone,
    required this.timezoneOffset,
    required this.dailyItem,
    required this.hourlyItem,
  });

  factory OneCallDataWeather.fromJson(Map<String, dynamic> json) =>
      _$OneCallDataWeatherFromJson(json);

  Map<String, dynamic> toJson() => _$OneCallDataWeatherToJson(this);

  @override
  String toString() => '''
      lat:$lat,
      lon:$lon,
      timezone:$timezone,
      daily:$dailyItem,
      hourly:$hourlyItem,

  ''';
}
