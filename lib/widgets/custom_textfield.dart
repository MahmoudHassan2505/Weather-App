import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Center(
        child: TextField(
          onSubmitted: (value) async {
            var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
            getWeatherCubit.fetchWeather(value: value);
            Navigator.of(context).pop();
          },
          decoration: InputDecoration(
            hintText: "Enter City  Name",
            suffixIcon: const Icon(Icons.search),
            label: const Text("Search"),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.yellow,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
