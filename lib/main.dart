import 'package:flutter/material.dart';
import 'package:project/Authantication/SignupPage.dart';
import 'package:project/Authantication/signIn.dart';
import 'package:project/Pages/bottomnavugationbar.dart';
import 'package:project/homePage.dart';
import 'package:get/get.dart';

void main() {
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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:
          // SignInPage()
          //  SignupPage()
          Custombottomnivationbar(),
    );
  }
}
