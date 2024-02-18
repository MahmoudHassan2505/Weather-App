import 'package:flutter/material.dart';
import 'package:weather_app/main.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherInfo extends StatelessWidget {
  final WeatherModel weatherModel;
  const WeatherInfo({super.key, required this.weatherModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            getMaterialColor(weatherModel.condition),
            getMaterialColor(weatherModel.condition)[500]!,
            getMaterialColor(weatherModel.condition)[300]!,
            getMaterialColor(weatherModel.condition)[50]!,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 200),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              weatherModel.city,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              weatherModel.time,
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network(
                  'https:${weatherModel.icon}',
                  height: 100,
                ),
                Text(
                  '${weatherModel.temp.round()}',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  children: [
                    Text('Wind: ${weatherModel.wind.round()} km/h'),
                    Text('humidity: ${weatherModel.humidity}'),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              weatherModel.condition,
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
