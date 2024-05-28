import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // alignment: Alignment.center,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color.fromARGB(255, 218, 217, 212),
        ),
        child: TextFormField(
          style: const TextStyle(fontSize: 20),
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(20),
              // fillColor: Colors.deepPurpleAccent,
              // filled: true,
              hintText: "Type Something",
              hintStyle: const TextStyle(fontSize: 20),
              border: InputBorder.none),
        ),
      ),
    );
  }
}
