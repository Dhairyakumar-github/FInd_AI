import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/Pages/Authantication/Aunthanticate_Controlllor.dart';
import 'package:project/Pages/Authantication/signIn.dart';
import 'package:project/Widgits/uiHelper.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});
  AuthControllor authControllor = Get.put(AuthControllor());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "Let's Register",
                    style: TextStyle(
                        fontSize: 40, fontWeight: FontWeight.w600, height: 1),
                  ),
                  const Text(
                    "Account",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Have a great journey",
                    style: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(177, 0, 0, 0),
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  CustomTextField(
                    hintText: "Name",
                    controllor: authControllor.name,
                    secure: false,
                  ),
                  CustomTextField(
                    hintText: "Email",
                    controllor: authControllor.email,
                    secure: false,
                  ),
                  CustomTextField(
                    hintText: "Password",
                    controllor: authControllor.password,
                    secure: true,
                    sufix: const Icon(Icons.remove_red_eye),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 70,
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.95,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Center(
                    child: Text(
                      "or",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        child: Image.asset(
                          "assets/google-logo-9808.png",
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 45,
                        width: 45,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "assets/facebook-logo-493.png",
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already a User?",
                        style: TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(() => SignInPage());
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 5, 88, 156),
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
