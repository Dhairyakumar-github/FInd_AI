import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:project/Pages/Authantication/signIn.dart';
import 'package:project/controllor/forgetPasswordControllor.dart';

class ResentPasswordPage extends StatelessWidget {
  final String email;
  ResentPasswordPage({super.key, required this.email});
  final controllor = Get.put(ForgatPasswordControllor());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 400,
                child: LottieBuilder.asset(
                  "assets/lottie/emailSent3.json",
                  // height: 400,
                ),
              ),
              Text(
                textAlign: TextAlign.center,
                email.toString(),
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              const Text(
                textAlign: TextAlign.center,
                "Your account Security is our priority! We've sent you a Secure Link to Safely Change Your Password and Keep Your Account Protected.",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    height: 1.1,
                    color: Color.fromARGB(255, 110, 108, 108)),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Get.offAll(() => SignInPage());
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
                    "Done",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () => controllor.resendPasswordResentEmail(email),
                  style: const ButtonStyle(
                    shadowColor: WidgetStatePropertyAll(Colors.transparent),
                    surfaceTintColor:
                        WidgetStatePropertyAll(Colors.transparent),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    backgroundColor: WidgetStatePropertyAll(Colors.transparent),
                    foregroundColor: WidgetStatePropertyAll(
                      Colors.black,
                    ),
                  ),
                  child: const Text(
                    "Resend Email",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
