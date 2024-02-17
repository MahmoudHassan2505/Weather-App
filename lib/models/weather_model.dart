class WeatherModel {
  final String city;
  final String time;
  final double temp;
  final String icon;
  final String condition;
  final double wind;
  final int humidity;

  WeatherModel({
    required this.city,
    required this.condition,
    required this.humidity,
    required this.icon,
    required this.temp,
    required this.time,
    required this.wind,
  });

  factory WeatherModel.fromjson(json) {
    return WeatherModel(
      city: json['location']['name'],
      condition: json['current']['condition']['text'],
      humidity: json['current']['humidity'],
      icon: json['current']['condition']['icon'],
      temp: json['current']['temp_c'],
      time: json['location']['localtime'],
      wind: json['current']['wind_kph'],
    );
  }
}
