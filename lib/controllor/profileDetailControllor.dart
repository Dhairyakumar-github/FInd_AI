import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:project/Pages/ProfilePage/userProfilePage.dart';
import 'package:project/Pages/ProfilePage/userUplodsPage.dart';

class ProfileMainControllor extends GetxController
    with GetSingleTickerProviderStateMixin {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    final controllor = TabController(length: 2, vsync: this);
  }

  var controllor;
  final List<Tab> myTab = [
    Tab(
      // text: "hello1",
      child: UserProfilePage(),
    ),
    Tab(
      child: UserUplodsPage(),
    ),
  ];
}
