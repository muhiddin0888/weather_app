import 'package:json_annotation/json_annotation.dart';

part 'coord_data.g.dart';

// "lon": 69.2163,
// "lat": 41.2646

@JsonSerializable(explicitToJson: true)
class CoordData {
  @JsonKey(defaultValue: 0.0, name: 'lon')
  double lon;

  @JsonKey(defaultValue: 0.0, name: 'lat')
  double lat;

  CoordData({
    required this.lat,
    required this.lon,
  });

  factory CoordData.fromJson(Map<String, dynamic> json) =>
      _$CoordDataFromJson(json);

  Map<String, dynamic> toJson() => _$CoordDataToJson(this);

  @override
  String toString() => '''
      lat:$lat,
      lon:$lon,

  ''';
}
