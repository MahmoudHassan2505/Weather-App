import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_services.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(NoWeatherState());

  late WeatherModel weatherModel;

  fetchWeather({required String value}) async {
    try {
      weatherModel = await WeatherServices().getWeather(value);

      emit(DisplayWeatherState());
    } catch (e) {
      emit(WeatherFailureState());
    }
  }
}
