import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:project/Pages/Authantication/signIn.dart';

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
    } else {
      int page = currentIndex.value + 1;
      pagecontrollor.jumpToPage(page);
    }
  }

  void skipPage() {
    currentIndex.value = 2;
    pagecontrollor.jumpToPage(2);
  }
}
