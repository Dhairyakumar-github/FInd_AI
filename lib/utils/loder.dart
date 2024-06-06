import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class Loader {
  static void openLoaderDialog() {
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (_) => PopScope(
        child: Container(
          color: const Color.fromARGB(255, 210, 206, 195),
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 250,
              ),
              LottieBuilder.asset("assets/lottie/loading.json"),
              SizedBox(
                height: 20,
              ),
              Text("We are processing your information...")
            ],
          ),
        ),
      ),
    );
  }

  static stopLoader() {
    Navigator.of(Get.overlayContext!).pop();
  }

  static WarningSnakBar({title, message = ""}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: const Color.fromARGB(255, 228, 238, 243),
      backgroundColor: Color.fromARGB(255, 248, 255, 45),
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 3),
      margin: EdgeInsets.all(20),
      icon: Icon(Icons.warning_rounded),
    );
  }

  static errorSnakBar({title, message = ""}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: const Color.fromARGB(255, 228, 238, 243),
      backgroundColor: Color.fromARGB(255, 255, 23, 23),
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 3),
      margin: EdgeInsets.all(20),
      icon: Icon(Icons.warning_rounded),
    );
  }

  static SucessSnakBar({title, message = ""}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: const Color.fromARGB(255, 228, 238, 243),
      backgroundColor: Color.fromARGB(255, 0, 255, 72),
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 3),
      margin: EdgeInsets.all(20),
      icon: Icon(Icons.warning_rounded),
    );
  }
}
