import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:stuntsync/bottom_navigation_parent.dart';

import '../../../features/authentication/screens/login/login.dart';
import '../../../features/authentication/screens/onboarding/onboarding.dart';
import '../../../features/authentication/screens/signup/verify_email.dart';
import '../../../utils/exception/firebase_auth_exceptions.dart';
import '../../../utils/exception/firebase_exceptions.dart';
import '../../../utils/exception/format_exceptions.dart';
import '../../../utils/exception/platform_exceptions.dart';


class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  /// Variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  /// Called from main.dart app launch
  @override
  void onReady() {
    // Remove the native splash screen
    FlutterNativeSplash.remove();
    // Redirect to the appropriate screen
    screenRedirect();
  }

  /// Function to show relevant screen
  screenRedirect() async {
    final user = _auth.currentUser;
    if (user != null) {
      if (user.emailVerified) {
        Get.offAll(() => const BottomNavigationParent());
      } else {
        Get.offAll(() => VerifyEmailScreen(email: _auth.currentUser?.email));
      }
    } else {
      // Local Storage
      deviceStorage.writeIfNull('IsFirstTime', true);

      // Check if it's the first time launching the app
      deviceStorage.read('IsFirstTime') != true
          ? Get.offAll(() => const LoginPage()) // Redirect to the Login Screen if not the first time
          : Get.offAll(() => const OnBoardingScreen()); // Redirect to the OnBoarding Screen if not the first time
    }
  }

/* --------------------- Email & Password sign-in ------------------------- */

  /// [EmailAuthentication] - LOGIN
  Future<UserCredential> loginWithEmailAndPassword(String email, String password) async {
    try {
      return await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw SSFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw SSFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const SSFormatException();
    } on PlatformException catch (e) {
      throw SSPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  /// [EmailAuthentication] - REGISTER
  Future<UserCredential> registerWithEmailAndPassword(String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw SSFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw SSFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const SSFormatException();
    } on PlatformException catch (e) {
      throw SSPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  /// [EmailVerification] - MAIL VERIFICATION
  Future<void> sendEmailVerification() async {
    try {
      await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      throw SSFirebaseException(e.code).message;
    } on FirebaseException catch (e) {
      throw SSFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const SSFormatException();
    } on PlatformException catch (e) {
      throw SSPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  /// [ReAuthentication] - ReAuthenticate User

  /// [EmailAuthentication] - Forgot Password

/* --------------------- Federated identity & social sign-in ------------------------- */

  /// [GoogleAuthentication] - GOOGLE

  /// [FacebookAuthentication] - FACEBOOK

/* --------------------- ./end Federated identity & social sign-in ------------------------- */

  /// [LogoutUser] - Valid for any authentication
  Future<void> logout() async {
    try {
      await FirebaseAuth.instance.signOut();
      Get.offAll(() => const LoginPage());
    } on FirebaseAuthException catch (e) {
      throw SSFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw SSFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const SSFormatException();
    } on PlatformException catch (e) {
      throw SSPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

/// DELETE USER - Remove user Auth & Firebase Account
}