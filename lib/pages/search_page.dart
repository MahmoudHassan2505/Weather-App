import 'package:flutter/material.dart';
import 'package:weather_app/widgets/custom_textfield.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search City"),
        centerTitle: true,
      ),
      body: const CustomTextField(),
    );
  }
}
