import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/Pages/SearchPage.dart';
import 'package:project/Widgits/CarousalSlider.dart';

import 'package:project/Widgits/CustomCategory.dart';
import 'package:project/Widgits/card.dart';
import 'package:project/Widgits/searchBar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: Custombottomnivationbar(),
      // appBar: AppBar(
      //   backgroundColor: const Color.fromARGB(255, 150, 207, 235),
      // ),
      // backgroundColor: Color.fromARGB(255, 242, 245, 245),
      backgroundColor: const Color.fromARGB(255, 245, 248, 252),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Find Ai ",
                  style: TextStyle(
                      fontFamily: "Bhloo Bhai 2",
                      fontSize: 45,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
            ),
            // Hero(
            //   tag: "hero",
            //   child: GestureDetector(
            //     onTap: () {
            //       // Get.to(NewPage());
            //       // Navigator.push(context,
            //       //     MaterialPageRoute(builder: (context) => NewPage()));
            //     },
            //     child: Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Container(
            //             height: 70,
            //             width: MediaQuery.of(context).size.width * .7,
            //             color: Colors.blue,
            //           ),
            //           const SizedBox(
            //             width: 20,
            //           ),
            //           Container(
            //             width: 70,
            //             height: 70,
            //             decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(25),
            //               color: Colors.black,
            //             ),
            //             child: const Icon(
            //               Icons.filter_alt,
            //               color: Colors.white,
            //               size: 26,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            // const SizedBox(
            //   height: 10,
            // ),
            CrousalSlider(),

            const SizedBox(
              height: 20,
            ),

            // tabbar
            // CustomTabbar()

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Category",
                style: TextStyle(
                  fontFamily: "Bhloo Bhai 2",
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  CustomCategory(),
                  CustomCategory(),
                  CustomCategory(),
                  CustomCategory(),
                  CustomCategory(),
                  CustomCategory(),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Latest",
                style: TextStyle(
                    fontFamily: "Bhloo Bhai 2",
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 0, 0, 0)),
              ),
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            Wrap(
              children: [
                CustomCard(),
                CustomCard(),
                CustomCard(),
              ],
            ),

            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
