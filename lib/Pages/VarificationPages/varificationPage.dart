import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:project/Pages/Authantication/signIn.dart';
import 'package:project/Pages/VarificationPages/varificationSucessPage.dart';
import 'package:project/Repositories/authantication_repositories.dart';
import 'package:project/controllor/verifyingControllor.dart';

class VarificationPage extends StatelessWidget {
  VarificationPage({super.key});
  final varificationControllor = Get.put(Verifyingcontrollor());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Get.offAll(() => AuthanticationRepositories.instance.logout());
            },
            icon: Icon(Icons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              LottieBuilder.asset(
                "assets/lottie/VarificationAnimation.json",
                // height: 250,
                width: 200,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Verify your Email Address",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 45,
              ),
              InkWell(
                onTap: () {
                  Get.to(() =>
                      varificationControllor.checkEmailVarificationStatus());
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.deepPurpleAccent,
                  ),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: 70,
                  child: Text(
                    "Continue",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.7,
                child: InkWell(
                  onTap: () {
                    Get.to(() =>
                        Verifyingcontrollor.instance.sendEmailVerification());
                  },
                  child: Text(
                    "Resend Email",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
