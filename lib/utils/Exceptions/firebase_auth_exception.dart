import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class CustomFirebaseExceptions implements Exception {
  static handleFirebaseAuthException(e) {
    switch (e) {
      case 'invalid-email':
        return 'The email address is badly formatted.';
      case 'user-disabled':
        return 'The user corresponding to the given email has been disabled.';
      case 'user-not-found':
        return 'There is no user corresponding to the given email.';
      case 'wrong-password':
        return 'The password is invalid for the given email.';
      case 'email-already-in-use':
        return 'The email address is already in use by another account.';
      case 'operation-not-allowed':
        return 'Email/password accounts are not enabled.';
      case 'weak-password':
        return 'The password is not strong enough.';
      case 'credential-already-in-use':
        return 'This credential is already associated with a different user account.';
      case 'invalid-credential':
        return 'The credential data is malformed or has expired.';
      case 'account-exists-with-different-credential':
        return 'An account already exists with the same email address but different sign-in credentials.';
      case 'invalid-verification-code':
        return 'The SMS verification code used to create the phone auth credential is invalid.';
      case 'invalid-verification-id':
        return 'The verification ID used to create the phone auth credential is invalid.';
      case 'missing-verification-code':
        return 'The phone auth credential was created with an empty SMS verification code.';
      case 'missing-verification-id':
        return 'The phone auth credential was created with an empty verification ID.';
      case 'session-expired':
        return 'The SMS code has expired.';
      case 'too-many-requests':
        return 'We have blocked all requests from this device due to unusual activity. Try again later.';
      case 'invalid-phone-number':
        return 'The provided phone number is not valid.';
      default:
        return 'An undefined Error happened.';
    }
  }
}
