import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:project/Pages/VarificationPages/varificationSucessPage.dart';
import 'package:project/Repositories/authantication_repositories.dart';
import 'package:project/utils/loder.dart';

class Verifyingcontrollor extends GetxController {
  static Verifyingcontrollor get instance => Get.find();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    sendEmailVerification();
    setTimer();
  }

  sendEmailVerification() async {
    await AuthanticationRepositories.instance.sendEMailVarification();
    Loader.SucessSnakBar(
        title: "Email Sent",
        message: "Please check your inbox and verify email");

    try {} catch (e) {
      Loader.errorSnakBar(title: "oh snap", message: e.toString());
    }
  }

  setTimer() {
    Timer.periodic(
      Duration(seconds: 1),
      (time) async {
        await FirebaseAuth.instance.currentUser?.reload();
        final user = FirebaseAuth.instance.currentUser;
        if (user?.emailVerified ?? false) {
          time.cancel();
          Get.offAll(() => varificationSucessPage());
        }
      },
    );
  }

  // manually check if email is varified

  checkEmailVarificationStatus() async {
    final currentUser = await FirebaseAuth.instance.currentUser;
    if (currentUser != null && currentUser.emailVerified) {
      Get.offAll(() => varificationSucessPage());
    }
  }
}
