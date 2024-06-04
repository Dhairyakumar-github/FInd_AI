import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:project/Pages/OnbordingScreen/onbordingControllor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnbordingScreen extends StatelessWidget {
  OnbordingScreen({super.key});
  final controllor = Get.put(OnBordingControllor());

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: controllor.updatePageIndicator,
            controller: controllor.pagecontrollor,
            children: [
              OnbordingPage(
                image: "assets/lottie/Animation2.json",
                title: "Explore the collection of Ai",
                description: "this is description for the title",
              ),
              OnbordingPage(
                image: "assets/lottie/Animation3.json",
                title: "Explore the collection of Ai",
                description: "this is description for the title",
              ),
              OnbordingPage(
                image: "assets/lottie/Animation1.json",
                title: "Explore the collection of Ai",
                description: "this is description for the title",
              ),
            ],
          ),
          Obx(
            () => controllor.currentIndex.value != 2
                ? Positioned(
                    top: 40,
                    right: 10,
                    child: TextButton(
                      onPressed: () {
                        controllor.skipPage();
                      },
                      child: Text(
                        "Skip",
                        style: TextStyle(fontSize: h * 0.02),
                      ),
                    ),
                  )
                : Text(""),
          ),
          Positioned(
            bottom: 50,
            left: 20,
            child: SmoothPageIndicator(
              controller: controllor.pagecontrollor,
              count: 3,
              onDotClicked: controllor.dotNavigationClick,
              effect: ExpandingDotsEffect(dotHeight: 6),
            ),
          ),
          Positioned(
            bottom: h * 0.04,
            right: w * 0.02,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: CircleBorder(), iconColor: Colors.black),
              onPressed: () {
                controllor.nextpage(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(17.0),
                child: Icon(Icons.arrow_forward_ios),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class OnbordingPage extends StatelessWidget {
  String image, title, description;
  OnbordingPage(
      {super.key,
      required this.image,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LottieBuilder.asset(image),
        Text(
          title,
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 19,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
        ),
      ],
    );
  }
}
