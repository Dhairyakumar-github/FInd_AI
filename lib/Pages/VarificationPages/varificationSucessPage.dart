import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:project/Pages/Authantication/signIn.dart';
import 'package:project/Repositories/authantication_repositories.dart';

class varificationSucessPage extends StatelessWidget {
  varificationSucessPage({super.key});
  final _authRepositoryControllor = Get.put(AuthanticationRepositories());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LottieBuilder.asset(
                "assets/lottie/VarificationSucessAnimation.json",
                // height: 250,
                width: 200,
                repeat: false,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Email Address successfully Verified",
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(
                height: 45,
              ),
              InkWell(
                onTap: () {
                  Get.to(() => _authRepositoryControllor.screenRedirect());
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
            ],
          ),
        ),
      ),
    );
    ;
  }
}
