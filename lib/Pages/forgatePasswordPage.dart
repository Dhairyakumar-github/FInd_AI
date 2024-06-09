import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:project/Pages/Authantication/validator.dart';
import 'package:project/Pages/resentPassword.dart';
import 'package:project/controllor/forgetPasswordControllor.dart';

class ForgatePasswordPage extends StatelessWidget {
  const ForgatePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controllor = Get.put(ForgatPasswordControllor());
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                const Text(
                  "Forget Password",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                ),
                // const SizedBox(
                //   height: 5,
                // ),
                const Text(
                  "Don't worry sometimes people can forget too. enter your email and we will send you a passward reset link",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 149, 148, 148)),
                ),
                const SizedBox(
                  height: 30,
                ),
                Form(
                  key: controllor.forgetpasswordFormKey,
                  child: TextFormField(
                    validator: (value) => Validator.validateEmail(value),
                    controller: controllor.email,
                    decoration: const InputDecoration(hintText: "Email"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      controllor.sendPasswordResentEmail();
                    },
                    style: const ButtonStyle(
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      backgroundColor: WidgetStatePropertyAll(Colors.blue),
                      foregroundColor: WidgetStatePropertyAll(Colors.white),
                    ),
                    child: const Text(
                      "Submit",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
