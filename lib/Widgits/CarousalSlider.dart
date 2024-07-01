import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CrousalSlider extends StatelessWidget {
  CrousalSlider({super.key});

  final List items = ["assets/image/poster1.png", "assets/image/poster2.png"];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: items
          .map(
            (e) => Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                // height: 70,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 210, 215, 215),
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      e.toString(),
                      fit: BoxFit.cover,
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                ),
              ),
            ),
          )
          .toList(),
      options: CarouselOptions(
          height: MediaQuery.of(context).size.height * 0.2,
          initialPage: 0,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 2),
          enlargeCenterPage: true),
    );
  }
}
