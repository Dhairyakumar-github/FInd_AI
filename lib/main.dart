import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:project/Pages/bottomnavugationbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Thiszx   widget is the root of your application.
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
