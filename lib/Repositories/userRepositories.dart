import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:project/Models/userModel.dart';
import 'package:project/utils/Exceptions/firebase_auth_exception.dart';

class UserRepositories extends GetxController {
  final _db = FirebaseFirestore.instance;

  // Functions to save user Data to Firestore
  Future<void> saveUserData(UserModel user) async {
    try {
      await _db.collection("User").doc(user.id).set(user.toJson());
    } on FirebaseException catch (e) {
      throw CustomFirebaseExceptions.handleFirebaseAuthException(e.code);
    } catch (e) {
      throw "Something went wrong";
    }
  }

  // Functions to save user Recods with google Sign In to Firestore

  Future<void> saveUserRecord(UserCredential? userCredential) async {
    try {
      if (userCredential != null) {
        final newuser = UserModel(
          name: userCredential.user!.displayName ?? "",
          email: userCredential.user!.email ?? "",
          password: "Google User",
          id: userCredential.user!.uid,
          profilePictue: userCredential.user!.photoURL ?? "",
        );
        await saveUserData(newuser);
      }
    } on FirebaseException catch (e) {
      throw CustomFirebaseExceptions.handleFirebaseAuthException(e.code);
    } catch (e) {
      throw "Something went wrong";
    }
  }
}
