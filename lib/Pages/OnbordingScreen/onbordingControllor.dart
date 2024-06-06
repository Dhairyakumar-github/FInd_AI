import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get_storage/get_storage.dart';
import 'package:project/Pages/Authantication/signIn.dart';
import 'package:project/Pages/OnbordingScreen/onbording.dart';

class OnBordingControllor extends GetxController {
  Rx<int> currentIndex = 0.obs;
  final pagecontrollor = PageController();
  void updatePageIndicator(index) => currentIndex.value = index;
  void dotNavigationClick(index) {
    currentIndex.value = index;
    pagecontrollor.jumpTo(index);
  }

  void nextpage(index) {
    if (currentIndex.value == 2) {
      Get.to(SignInPage());

      final storage = GetStorage();
      if (kDebugMode) {
        print(
            "==================Get Storage next button ======================");
        print(storage.read("IsFirstTime"));
      }
      storage.write("IsFirstTime", false);
      // storage.read("IsFirstTime") != true
      //     ? Get.offAll(SignInPage())
      //     : Get.offAll(OnbordingScreen());

      if (kDebugMode) {
        print(
            "==================Get Storage onbording controllor ======================");
        print(storage.read("IsFirstTime"));
      }
    } else {
      int page = currentIndex.value + 1;
      pagecontrollor.jumpToPage(page);
    }
  }

  void skipPage() {
    final storage = GetStorage();
    storage.write("IsFirstTime", false);
    // storage.read("IsFirstTime") != true
    //     ? Get.offAll(SignInPage())
    //     : Get.offAll(OnbordingScreen());

    currentIndex.value = 2;
    pagecontrollor.jumpToPage(2);
  }
}
