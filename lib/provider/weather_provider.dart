import 'package:flutter/material.dart';

import '../services/weather.dart';


class WeatherProvider extends ChangeNotifier {
  WeatherModel _weatherModel = WeatherModel();
  late dynamic _locationWeather;

  dynamic get locationWeather => _locationWeather;

  Future<void> getLocationWeather() async {
    _locationWeather = await _weatherModel.getLocationWeather();
    notifyListeners();
  }

  Future<void> getCityWeather(String cityName) async {
    _locationWeather = await _weatherModel.getCityWeather(cityName);
    notifyListeners();
  }
}
