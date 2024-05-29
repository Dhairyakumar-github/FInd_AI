import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CrousalSlider extends StatelessWidget {
  CrousalSlider({super.key});

  final List items = [1, 2, 3, 4, 5];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: items
          .map(
            (e) => Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 210, 215, 215),
                ),
              ),
            ),
          )
          .toList(),
      options: CarouselOptions(
          initialPage: 0,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 2),
          enlargeCenterPage: true),
    );
  }
}
