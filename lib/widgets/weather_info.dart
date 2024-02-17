import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherInfo extends StatelessWidget {
  final WeatherModel weatherModel;
  const WeatherInfo({super.key, required this.weatherModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                weatherModel.icon,
                height: 80,
              ),
              Text(
                '${weatherModel.temp}',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: [
                  Text('Wind: ${weatherModel.wind}'),
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
    );
  }
}
