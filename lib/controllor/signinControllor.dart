import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:project/Repositories/authantication_repositories.dart';
import 'package:project/Widgits/Network/networkManager.dart';
import 'package:project/utils/Exceptions/firebase_auth_exception.dart';
import 'package:project/utils/loder.dart';

class Signincontrollor extends GetxController {
  // variabels
  final email = TextEditingController();
  final password = TextEditingController();
  final rememberMe = false.obs;
  final hidePassword = true.obs;

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  NetworkManager networkManager = Get.put(NetworkManager());
  AuthanticationRepositories authRepositoties =
      Get.put(AuthanticationRepositories());

  final localstorage = GetStorage();

  // EMAIL AND PASSWARD SIGNIN
  Future<void> emailAndPasswordSignIn() async {
    try {
      //Start Loading
      Loader.openLoaderDialog();

      // Check Internet connectivity
      final isConnected = await networkManager.isConnected();
      if (!isConnected) {
        // remove loader
        Loader.stopLoader();
        return;
      }

      // Form Validation
      if (!formkey.currentState!.validate()) {
        // remove loader
        Loader.stopLoader();
        return;
      }

      // SAVEDATA IF REMEMBERME IS CHECKED
      if (rememberMe.value) {
        localstorage.write("REMEMBER_ME_EMAIL", email.text.trim());
        localstorage.write("REMEMBER_ME_PASSWORD", password.text.trim());
      }

      final usercredentials = await authRepositoties.loginWithEmailAndPassword(
          email.text.trim(), password.text.trim());

      // remove loader
      Loader.stopLoader();
      // Screen Redirect
      authRepositoties.screenRedirect();
    } on FirebaseException catch (e) {
      throw CustomFirebaseExceptions.handleFirebaseAuthException(e.code);
    } catch (e) {
      Loader.stopLoader();
      Loader.errorSnakBar(title: "oh snap", message: e.toString());
      throw "Something went wrong";
    }
  }

  Future<void> googleSignIN() async {
    try {
      //Start Loading
      Loader.openLoaderDialog();

      // Check Internet connectivity
      final isConnected = await networkManager.isConnected();
      if (!isConnected) {
        // remove loader
        Loader.stopLoader();
        return;
      }
      final userCredential = await authRepositoties.signInWithGoogle();
    } catch (e) {}
  }
}
