import 'package:flutter/material.dart';
import 'package:project/Widgits/card.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Latest",
                style: TextStyle(
                    fontFamily: "Bhloo Bhai 2",
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 0, 0, 0)),
              ),
            ),
            const SizedBox(
              height: 0,
            ),
            CustomCard(),
          ],
        ),
      ),
    );
  }
}
