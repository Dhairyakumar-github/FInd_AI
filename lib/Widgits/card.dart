import 'dart:ui';

import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          constraints: const BoxConstraints(maxWidth: 500),
          width: MediaQuery.of(context).size.width * 0.9,
          height: 230,
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color.fromARGB(255, 171, 174, 174),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            // width: 400,
            height: 80,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.2,
                maxWidth: MediaQuery.of(context).size.width * 0.8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color.fromARGB(255, 224, 227, 227),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "John Deo is the author of the",
                            maxLines: 1,
                            softWrap: true,
                            style: TextStyle(
                              height: 0.9,
                              overflow: TextOverflow.ellipsis,
                              fontFamily: "Bhloo Bhai 2",
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          Text(
                            "Free",
                            style: TextStyle(
                              fontFamily: "Bhloo Bhai 2",
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    // margin: EdgeInsets.only(right: 30),
                    width: 60,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.amber),
                    child: const Icon(Icons.arrow_forward_ios),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
