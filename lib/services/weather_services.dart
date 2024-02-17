import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherServices {
  final Dio dio = Dio();
  final String baseUrl = 'http://api.weatherapi.com/v1';
  final String apiKey = '3cba1a89bd4347ec9a2150504241702';

  Future<WeatherModel> getWeather(String cityName) async {
    Response response =
        await dio.get('$baseUrl/current.json?key=$apiKey&q=$cityName&aqi=no');

    return WeatherModel.fromjson(response.data);
  }
}
