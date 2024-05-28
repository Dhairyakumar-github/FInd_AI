import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controllor;
  final bool secure;
  const CustomTextField(
      {super.key,
      required this.hintText,
      required this.controllor,
      required this.secure});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        obscureText: secure,
        controller: controllor,
        style: const TextStyle(fontSize: 20),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.9,
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
            borderRadius: BorderRadius.circular(25),
          ),
          contentPadding: const EdgeInsets.all(20),
        ),
      ),
    );
  }
}
