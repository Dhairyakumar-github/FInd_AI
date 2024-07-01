import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LottieBuilder.asset("assets/lottie/under_construction3.json"),
            SizedBox(
              height: 10,
            ),
            Text(
              "Under construction!",
              style: TextStyle(fontSize: 24),
            ),
            TextButton(
              child: Text(
                "Go Back!",
                style: TextStyle(fontSize: 24),
              ),
              onPressed: () => Get.back(),
            ),
          ],
        ),
      ),
    );
  }
}
