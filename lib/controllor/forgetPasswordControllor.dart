import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/Pages/resentPassword.dart';
import 'package:project/Repositories/authantication_repositories.dart';
import 'package:project/Widgits/Network/networkManager.dart';
import 'package:project/utils/Exceptions/firebase_auth_exception.dart';
import 'package:project/utils/loder.dart';

class ForgatPasswordControllor extends GetxController {
  final email = TextEditingController();
  GlobalKey<FormState> forgetpasswordFormKey = GlobalKey<FormState>();

  AuthanticationRepositories authRepositoties =
      Get.put(AuthanticationRepositories());
  NetworkManager networkManager = Get.put(NetworkManager());

  sendPasswordResentEmail() async {
    try {
      Loader.openLoaderDialog();
      final isConnected = await networkManager.isConnected();
      if (!isConnected) {
        // remove loader
        Loader.stopLoader();
        return;
      }
      if (!forgetpasswordFormKey.currentState!.validate()) {
        // remove loader
        Loader.stopLoader();
        return;
      }

      authRepositoties.sendPasswordResantEmail(email.text.trim());

      Loader.stopLoader();

      Loader.SucessSnakBar(title: "Email sent", message: "Email has been sent");

      Get.to(() => ResentPasswordPage(
            email: email.text.trim(),
          ));
    } catch (e) {
      Loader.stopLoader();
      Loader.errorSnakBar(title: "oh snap", message: e.toString());
    }
  }

  resendPasswordResentEmail(String email) async {
    try {
      Loader.openLoaderDialog();
      final isConnected = await networkManager.isConnected();
      if (!isConnected) {
        // remove loader
        Loader.stopLoader();
        return;
      }

      authRepositoties.sendPasswordResantEmail(email);

      Loader.stopLoader();

      Loader.SucessSnakBar(title: "Email sent", message: "Email has been sent");
    } catch (e) {
      Loader.stopLoader();
      Loader.errorSnakBar(title: "oh snap", message: e.toString());
    }
  }
}
