import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:project/Pages/Authantication/signIn.dart';
import 'package:project/Pages/OnbordingScreen/onbording.dart';
import 'package:project/Pages/VarificationPages/varificationPage.dart';
import 'package:project/Pages/bottomnavugationbar.dart';
import 'package:project/utils/Exceptions/firebase_auth_exception.dart';

class AuthanticationRepositories extends GetxController {
  static AuthanticationRepositories get instance => Get.find();
  final _auth = FirebaseAuth.instance;
  final deviceStorage = GetStorage();
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  // function to show relevant Screen
  screenRedirect() async {
    final user = _auth.currentUser;
    if (user != null) {
      if (user.emailVerified) {
        Get.offAll(() => Custombottomnivationbar());
      } else {
        Get.offAll(() => VarificationPage());
      }
    } else {
      deviceStorage.writeIfNull("IsFirstTime", true);
      deviceStorage.read("IsFirstTime") != true
          ? Get.offAll(SignInPage())
          : Get.offAll(OnbordingScreen());
    }
  }
// LOGIN WITH EMAIL AND PASSWARD

  Future<UserCredential> loginWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw CustomFirebaseExceptions.handleFirebaseAuthException(e.code);
    } on PlatformException catch (e) {
      throw CustomFirebaseExceptions.handleFirebaseAuthException(e.code);
    } catch (e) {
      throw "Something went wrong";
    }
  }
  // Email And Passward Sign-Up

  Future<UserCredential> registerWithEmailAndPasswrd(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseException catch (e) {
      throw CustomFirebaseExceptions.handleFirebaseAuthException(e.code);
    } catch (e) {
      throw "Something went wrong";
    }
  }

  // Email [Mail Verification] ---------------

  Future<void> sendEMailVarification() async {
    try {
      await _auth.currentUser?.sendEmailVerification();
    } on FirebaseException catch (e) {
      throw CustomFirebaseExceptions.handleFirebaseAuthException(e.code);
    } catch (e) {
      throw "Something went wrong";
    }
  }

  // Google Sign in --------------------

  Future<UserCredential?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? userAccount = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await userAccount?.authentication;

      final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);

      return await _auth.signInWithCredential(credential);
    } on FirebaseException catch (e) {
      throw CustomFirebaseExceptions.handleFirebaseAuthException(e.code);
    } catch (e) {
      throw "Something went wrong";
    }
  }

  // logout
  Future<void> logout() async {
    try {
      await _auth.signOut();
      Get.offAll(() => SignInPage());
    } on FirebaseException catch (e) {
      throw CustomFirebaseExceptions.handleFirebaseAuthException(e.code);
    } catch (e) {
      throw "Something went wrong";
    }
  }
}
