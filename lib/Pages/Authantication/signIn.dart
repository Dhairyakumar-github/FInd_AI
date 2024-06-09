import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/Pages/forgatePasswordPage.dart';
import 'package:project/controllor/Aunthanticate_Controlllor.dart';
import 'package:project/Pages/Authantication/SignupPage.dart';
import 'package:project/Pages/Authantication/validator.dart';
import 'package:project/Pages/bottomnavugationbar.dart';
import 'package:project/Repositories/authantication_repositories.dart';
import 'package:project/Widgits/uiHelper.dart';
import 'package:project/Pages/homePage.dart';
import 'package:project/controllor/signinControllor.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});
  Signincontrollor controllor = Get.put(Signincontrollor());
  AuthanticationRepositories authControllor =
      Get.put(AuthanticationRepositories());
  final signincontrollor = Get.put(Signincontrollor());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: controllor.formkey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "Let's Sign In",
                    style: TextStyle(
                        fontSize: 40, fontWeight: FontWeight.w600, height: 1),
                  ),
                  // const Text(
                  //   "Account",
                  //   style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                  // ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Welcome back",
                    style: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(177, 0, 0, 0),
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  // CustomTextField(
                  //   hintText: "Email",
                  //   controllor: controllor.email,
                  //   secure: false,
                  // ),
                  TextFormField(
                    controller: controllor.email,
                    validator: (value) =>
                        Validator.validateEmptyText("Email", value),
                    decoration: InputDecoration(hintText: "Email"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Obx(
                    () => TextFormField(
                      validator: (value) => Validator.validatePassword(value),
                      controller: controllor.password,
                      obscureText: controllor.hidePassword.value,
                      decoration: InputDecoration(
                        hintText: "Password",
                        suffixIcon: IconButton(
                          onPressed: () {
                            controllor.hidePassword.value =
                                !controllor.hidePassword.value;
                          },
                          icon: controllor.hidePassword.value
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Obx(
                            () => Checkbox(
                              value: controllor.rememberMe.value,
                              onChanged: (v) {
                                controllor.rememberMe.value =
                                    !controllor.rememberMe.value;
                              },
                            ),
                          ),
                          Text(
                            "Remember me",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: InkWell(
                          onTap: () => Get.to(() => ForgatePasswordPage()),
                          child: Text(
                            "Forget password",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                fontFamily: ""),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      controllor.emailAndPasswordSignIn();
                    },
                    child: Container(
                      height: 70,
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * 0.95,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        "Sign In",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
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
                      InkWell(
                        onTap: () => signincontrollor.googleSignIN(),
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 1),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/google-logo-9808.png",
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              "assets/facebook-logo-493.png",
                            ),
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
                        "Don't have an account?",
                        style: TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(() => SignupPage());
                        },
                        child: const Text(
                          "Sign Up",
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
