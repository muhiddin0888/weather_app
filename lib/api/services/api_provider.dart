import 'dart:convert';
import 'package:http/http.dart' as https;
import 'package:http/http.dart';
import 'package:weather_app/core/constants/constants.dart';
import 'package:weather_app/models/current/weather_item.dart';
import 'package:weather_app/models/one_call/one_call_data.dart';
import 'package:weather_app/models/task/task.dart';

class ApiProvider {
  // CURRENT WEATHER DATA SEARCHING BY TEXT
  static Future<WeatherItem> getCurrentWeatherByText({
    required String searchText,
  }) async {
    try {
      var queryParams = {
        "appid": API_KEY,
        "q": searchText,
      };
      Response response = await https.get(
        Uri.https(BASE_URL, "/data/2.5/weather", queryParams),
      );
      if (response.statusCode == 200) {
        var jsonMap = jsonDecode(response.body);
        return WeatherItem.fromJson(jsonMap);
      } else {
        throw Exception();
      }
    } catch (e) {
      throw Exception(e);
    } finally {}
  }

  // CURRENT WEATHER DATA SEARCHING BY LATITUDE AND LONGITUDE
  static Future<OneCallDataWeather> getCurrentWeatherByLatLong({
    required double latitude,
    required double longitude,
  }) async {
    try {
      var queryParams = {
        "lat": latitude.toString(),
        "lon": longitude.toString(),
        "appid": API_KEY,
      };
      Response response = await https.get(
        Uri.https(BASE_URL, "/data/2.5/weather", queryParams),
      );
      if (response.statusCode == 200) {
        var jsonMap = jsonDecode(response.body);
        return OneCallDataWeather.fromJson(jsonMap);
      } else {
        throw Exception();
      }
    } catch (e) {
      throw Exception(e);
    } finally {}
  }

  /// DAILY AND HOURLY WEATHER
  static Future<OneCallDataWeather> getOneCallByLatLong({
    required double latitude,
    required double longitude,
  }) async {
    try {
      var queryParams = {
        "lat": latitude.toString(),
        "lon": longitude.toString(),
        "appid": API_KEY,
        "units": "metric",
        "exclude": "minutely,current",
      };
      Response response = await https.get(
        Uri.https(BASE_URL, "/data/2.5/onecall", queryParams),
      );
      if (response.statusCode == 200) {
        var jsonMap = jsonDecode(response.body);
        return OneCallDataWeather.fromJson(jsonMap);
      } else {
        throw Exception();
      }
    } catch (e) {
      throw Exception(e);
    } finally {}
  }

  // Task
  static Future<TaskData> getTask() async {
    try {
      Response response = await https.get(
        Uri.parse("https://easyenglishuzb.free.mockoapp.net/country/UZ"),
      );
      if (response.statusCode == 200) {
        var jsonMap = jsonDecode(response.body);
        return TaskData.fromJson(jsonMap);
      } else {
        throw Exception();
      }
    } catch (e) {
      throw Exception(e);
    } finally {}
  }
}
