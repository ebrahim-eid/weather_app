import 'dart:convert';

import 'package:http/http.dart';

import '../models/weather_model.dart';

class WeatherService {
  Future<WeatherModel> getWeather ({required String cityName})
  async {
    String baseUrl = 'http://api.weatherapi.com/v1';
    String apiKey = 'f92417adebf74911ae6223847231204';
    Uri url = Uri.parse(
        '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=3'
    );

    Response response = await get(url);

   Map<String , dynamic> data = jsonDecode(response.body);

   WeatherModel weather = WeatherModel.fromJson(data);
   return weather;
  }
}