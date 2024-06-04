import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthControllor extends GetxController {
  final name = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey signupFormKey = GlobalKey();

  Future<void> SignUp() async {
    try {} catch (e) {}
  }
}
