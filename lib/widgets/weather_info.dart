import 'package:flutter/material.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 200),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Cairo",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            "updated At:15:02 AM",
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.network(
                "https://img.freepik.com/free-vector/rain-element-cute-weather-clipart-vector-grey-background_53876-135907.jpg?w=1380&t=st=1708180011~exp=1708180611~hmac=f4c5ad586257aa53a1c22525266fde9f59aceff2b760b32ba732f24d91c01490",
                height: 80,
              ),
              Text(
                '17',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: [
                  Text('min: 15'),
                  Text('max: 25'),
                ],
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Light Rain',
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
