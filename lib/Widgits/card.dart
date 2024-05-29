import 'dart:ui';

import 'package:flutter/material.dart';

class Cardd extends StatelessWidget {
  const Cardd({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, bottom: 10),
      child: Container(
        constraints: BoxConstraints(maxWidth: 500),
        width: MediaQuery.of(context).size.width * 0.9,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color.fromARGB(255, 171, 174, 174),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            // width: MediaQuery.of(context).size.width * 0.3,
            // height: 10,
            constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color.fromARGB(255, 95, 99, 99),
            ),
          ),
        ),
      ),
    );
  }
}
