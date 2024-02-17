import 'package:flutter/material.dart';

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
          onSubmitted: (value) {},
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
