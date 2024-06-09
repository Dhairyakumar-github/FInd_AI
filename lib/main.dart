import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:project/Pages/Authantication/signIn.dart';
import 'package:project/Pages/OnbordingScreen/onbording.dart';
import 'package:project/Pages/VarificationPages/varificationPage.dart';
import 'package:project/Pages/bottomnavugationbar.dart';
import 'package:project/Pages/forgatePasswordPage.dart';
import 'package:project/Pages/ProfilePage/profileMainPage.dart';
import 'package:project/Pages/resentPassword.dart';
import 'package:project/Repositories/authantication_repositories.dart';
import 'package:project/Theme/theme.dart';
import 'package:project/dummyPage.dart';
import 'package:project/firebase_options.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // .then((FirebaseApp value) => Get.put(AuthanticationRepositories()));
  FlutterNativeSplash.remove();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Find Ai',
      theme: MyAppTheme.lightTheme,
      home:
          // DummyPage()
          // SignInPage()
          //  SignupPage()
          Custombottomnivationbar(),
      // OnbordingScreen(),
      // VarificationPage()
      // ForgatePasswordPage()
      // ResentPasswordPage()
      // ProfileDetailsPage(),
      //     Scaffold(
      //   body: Center(
      //     child: CircularProgressIndicator(),
      //   ),
      // ),
    );
  }
}
