import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/Models/userModel.dart';
import 'package:project/Pages/VarificationPages/varificationPage.dart';
import 'package:project/utils/loder.dart';
import 'package:project/Repositories/authantication_repositories.dart';
import 'package:project/Repositories/userRepositories.dart';
import 'package:project/Widgits/Network/networkManager.dart';

class AuthControllor extends GetxController {
  final hidePassword = true.obs;
  final name = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey();

  NetworkManager networkManager = Get.put(NetworkManager());

  void SignUp() async {
    try {
      print("Hello there!");

      //Start Loading
      Loader.openLoaderDialog();

      // Check Internet connectivity
      final isConnected = await networkManager.isConnected();
      if (!isConnected) {
        // remove loader
        Loader.stopLoader();
        return;
      }

      //Form Validation
      if (!signupFormKey.currentState!.validate()) {
        // remove loader
        Loader.stopLoader();
        return;
      }
      ;

// --------------------------Email and Password SignIn -------------------------------------

      //REGISTER User in Firebase Authentication & Save User data in Firebase

      final userCredential = await AuthanticationRepositories.instance
          .registerWithEmailAndPasswrd(email.text, password.text);

      // store Authantication user data in Firebase firestore
      final newuser = UserModel(
        name: name.text.trim(),
        email: email.text.trim(),
        password: password.text.trim(),
        id: userCredential.user!.uid,
        profilePictue: "",
      );

      final UserRepositories userRepositories = Get.put(UserRepositories());
      await userRepositories.saveUserData(newuser);

      // stop loading
      Loader.stopLoader();

      // Show sucess message
      Loader.SucessSnakBar(
          message: "Your Account has been sucessfully created",
          title: "Congratulations");

      // move to verification screen
      Get.to(() => VarificationPage());
    } catch (e) {
      Loader.stopLoader();
      Loader.errorSnakBar(message: e.toString(), title: "Error");
    }
  }
}
